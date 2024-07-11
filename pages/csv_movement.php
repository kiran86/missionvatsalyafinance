<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}
	require_once('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

	$uploaddir = "../csv/";
	$uploadfile = $uploaddir . $_POST['fy-qtr'] . ".csv";
	$action = $_POST['action'];
	if ($action == 'forward') {
	    $movement = 1;
		$err_msg = "Failed to forward the file.";
		$success_msg = "File forwarded for approval.";
	} else if ($action == 'revert') {
		$movement = -1;
		$err_msg = "Failed to revert the file.";
		$success_msg = "File reverted back for rework.";
	} else {
		$movement = 0;
		$err_msg = "Failed to approved allotment.";
		$success_msg = "Allotment data finalized.";
	}
	
    switch ($action) {
		case 'forward':
		case 'revert':
			if(file_exists($uploadfile)) {
				$query = "UPDATE fy_quarter SET at_user_id = ? WHERE fy_id = ?";
				$stmt= $mysqli->prepare($query);
				if (false === $stmt) {
					trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
					echo json_encode(Array('status' => 0, 'message' =>'An error occured!' . $err_msg));
				} else {
					$user = $_SESSION['login'] + $movement;
					$stmt->bind_param('is', $user, $_POST['fy-qtr']);
					$stmt->execute();
					echo json_encode(Array('status' => 1, 'message' =>$success_msg));
				}
			} else {
				error_log('CSV file not found');
				echo json_encode(Array('status' => 0, 'message' =>'An error occured!' . $err_msg));
			}
			break;
		case 'approve':
			if(file_exists($uploadfile)) {
				$query = "INSERT INTO `fund_release` (`cci_id`, `fy_id`, `n_months`, `children_days`, `cwsn_child_days`, `amnt_released`) VALUES (?,?,?,?,?,?)";
				$stmt= $mysqli->prepare($query);
				if (false === $stmt) {
                    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
                    echo json_encode(Array('status' => 0, 'message' =>$err_msg));
                } else {
					$csv_data = file($uploadfile);
					foreach ($csv_data as $key => $value) {
						// skip header line
						if ($key == 0)
							continue;
						$row = str_getcsv($value);
						// skip rows with empty children days
						if (count($row) < 12 || $row[9] == '' || $row[10] == '' || $row[11] == '')
							continue;

						$cci_id = $row[0];
						$fy_id = $row[7];
						$n_months = intval($row[8]);
						$children_days = intval($row[9]);
						$cwsn_children_days = intval($row[10]);
						$dist_recommendation = floatval($row[11]);

						switch ($row[5]) {
							case 'Children Home':
							case 'Observation Home':
							case 'Special Home':
							case 'Place of Safety':
							case 'Children Home CWSN':
								// calculate total amount
								$maintanence_cost = $n_months * $children_days * 3000.0;
								$bedding_cost = $n_months * $children_days * 250.0;
								$cwsn_fund = $n_months * $cwsn_children_days * 4400.0;
								$admin_cost = 250000.0;
								$cwsn_quip = ($row[5] == 'Children Home CWSN'? 1.0 : 0.0) * 100000.0;
								$staff_sal = 657280.0;
								$cwsn_staff_sal = ($row[5] == 'Children Home CWSN'? 1.0 : 0.0) * 143191.0;
								$total_sal = $staff_sal + $cwsn_staff_sal;
								$total_recurring = 	$maintanence_cost + 
													$bedding_cost +
													$cwsn_fund +
													$admin_cost + 
													$cwsn_quip +
													$total_sal;
								$amnt_released = $total_recurring > $dist_recommendation ? $dist_recommendation : $total_recurring;
								break;
							case 'Specialized Adoption Agency':
								// calculate total amount
								$maintanence_cost = $n_months * $children_days * 2500.0;
								$admin_cost = 56250.0;
								$total_sal = 368204.0;
								$total_recurring = 	$maintanence_cost + 
													$admin_cost +
													$total_sal;
								$amnt_released = $total_recurring > $dist_recommendation ? $dist_recommendation : $total_recurring;
								
								break;
							case 'Open Shelter':
								$maintanence_cost = $n_months * $children_days * 2500.0;
								$admin_cost = 125000.0;
								$total_sal = 325247.0;
								$total_recurring = 	$maintanence_cost + 
													$admin_cost +
													$total_sal;
								$amnt_released = $total_recurring > $dist_recommendation ? $dist_recommendation : $total_recurring;
								break;
						}
						// insert into database
						$stmt->bind_param('ssiiid', $cci_id, $fy_id, $n_months, $children_days, $cwsn_children_days, $amnt_released);
						$stmt->execute();
					}
					echo json_encode(Array('status' => 1, 'message' => $success_msg));
				}
			} else {
				error_log('CSV file not found');
				echo json_encode(Array('status' => 0, 'message' =>'Allotment file not found.'));
			}
			break;
	}