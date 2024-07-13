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
				$query = "INSERT INTO `fund_release` (`cci_id`, `fy_id`, `n_months`, `children_days`, `cwsn_child_days`, `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal`, `dist_recommendation`, `amnt_released`, `apprvl_dt`)
						VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
						$children_days = intval($row[9]);
						$cwsn_children_days = intval($row[10]);
						$dist_recommendation = floatval($row[11]);

						// Fetch expense structure for this cci
						$expenses = [];
						$sql = "SELECT `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal` FROM `cci_recurring_exp` WHERE `id` = '". $cci_id. "'";
						$rs= $mysqli->query($sql);
						while ($r = $rs->fetch_array()) {
							$expenses[] = $r;
						}
						$rs->close();
						$n_month = intval($row[8]);
						$n_quarter = ($n_month / 3) + ($n_month % 3) > 0 ? 1 : 0;
						$date = date("Y-m-d");
						// Calculate expenses
						$maintanence_cost = $n_month * (int)$row[9] * $expenses[0][0];
						$bedding_cost = $n_quarter * (int)$row[9] * $expenses[0][1];
						$cwsn_addl_grant = $n_month * (int)$row[10] * $expenses[0][4];
						$cwsn_medical = $n_month * (int)$row[10] * $expenses[0][5];
						$admin_cost = $n_quarter * $expenses[0][2];
						$cwsn_equip = $n_quarter * $expenses[0][3];
						$staff_sal = $n_quarter * $expenses[0][6];
						$cwsn_staff_sal = $n_quarter * $expenses[0][7];
						$total_sal = $staff_sal + $cwsn_staff_sal;
						$total_recurring = 	$maintanence_cost + 
											$bedding_cost +
											$cwsn_addl_grant + 
                                            $cwsn_medical + 
											$admin_cost + 
											$cwsn_equip +
											$total_sal;
						$amnt_released = $total_recurring > $dist_recommendation ? $dist_recommendation : $total_recurring;

						// insert into database
						$stmt->bind_param('ssiiidddddddddds', $cci_id, $fy_id, $n_month, $children_days, $cwsn_children_days, $maintanence_cost, $bedding_cost, $admin_cost, $cwsn_equip, $cwsn_addl_grant, $cwsn_medical, $staff_sal, $cwsn_staff_sal, $dist_recommendation, $amnt_released, $date);
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