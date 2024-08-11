<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

	require_once('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

	$fy_id = $_POST['fy_id'];
	$init_dt = isset($_POST['init_dt']) ? $_POST['init_dt'] : date('Y-m-d');
	$user = $_SESSION['login'];
	// Set CSV file location
	$csvdir = "../csv/";
	$csvfile = $csvdir . $fy_id . ".csv";
	// Set PDF file location
	$pdfdir = "../recommendations/";

	$remarks = null;
	$apprv_dt = null;
	$finalized = null;

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
			// First time CSV upload
			if($_SESSION['login'] == 1 && file_exists($csvfile)) {
				$query = "INSERT INTO `fund_release` (`cci_id`, `fy_id`, `n_months`, `children_days`, `cwsn_child_days`, `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal`, `amnt_adjstmnt`, `dist_recommendation`, `amnt_released`, `init_dt`, `remarks`, `at_user`, `apprvl_dt`, `finalized`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				$stmt= $mysqli->prepare($query);
				if (false === $stmt) {
                    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
                    echo json_encode(Array('status' => 0, 'message' =>$err_msg));
                } else {
					// Copy PDF files to project directory
					$pdffile ="";
					$flag = true;
					foreach ($_FILES as $key => $val) {
						if ($_SESSION['login'] == 1 && isset($_FILES[$key]) && $_FILES[$key]["error"] === UPLOAD_ERR_OK) {
							$pdffile = $pdfdir . date_format(date_create($init_dt), 'Ymd') . '_' . substr($key, 3) . "_" . $fy_id . ".pdf";
							if (!move_uploaded_file($_FILES[$key]["tmp_name"], $pdffile)) {
								$flag = false;
							}
						}
					}
					if (!$flag) {
						trigger_error("Error in query: PDF upload error", E_USER_ERROR);
                    	echo json_encode(Array('status' => 0, 'message' =>$err_msg));
					}
					// read CSV and load onto datarabse
					$csv_data = file($csvfile);
					foreach ($csv_data as $key => $value) {
						// skip header line
						if ($key == 0)
							continue;
						$row = str_getcsv($value);
						// skip rows with empty children days
						if (count($row) < 12 || $row[9] == '' || $row[10] == '' || $row[11] == '')
							continue;

						$user = $_SESSION['login'] + 1;
						$cci_id = $row[0];
						$children_days = intval($row[9]);
						$cwsn_children_days = intval($row[10]);
						$amnt_adjst = floatval($row[11]);
						$dist_recommendation = floatval($row[12]);

						// Fetch expense structure for this cci
						$expenses = [];
						$sql = "SELECT `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal` FROM `cci_recurring_exp` WHERE `id` = '". $cci_id. "'";
						$rs= $mysqli->query($sql);
						while ($r = $rs->fetch_array()) {
							$expenses[] = $r;
						}
						$rs->close();
						$n_month = intval($row[8]);
						$n_quarter = ($n_month / 3) + ($n_month % 3 > 0 ? 1 : 0);
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
											$total_sal +
											$amnt_adjst;
						$amnt_released = $total_recurring > $dist_recommendation ? $dist_recommendation : $total_recurring;

						// insert into database
						$stmt->bind_param('ssiiidddddddddddssisi', $cci_id, $fy_id, $n_month, $children_days, $cwsn_children_days, $maintanence_cost, $bedding_cost, $admin_cost, $cwsn_equip, $cwsn_addl_grant, $cwsn_medical, $staff_sal, $cwsn_staff_sal, $amnt_adjst, $dist_recommendation, $amnt_released, $date, $remarks, $user, $apprv_dt, $finalized);
                        $stmt->execute();
					}
					// remove CSV file
					unlink($csvfile);
					echo json_encode(Array('status' => 1, 'message' => $success_msg));
				}
			} else {
				if (move_file($user + 1)) {
					echo json_encode(Array('status' => 1, 'message' => $success_msg));
				} else {
					echo json_encode(Array('status' => 0, 'message' => $err_msg));
                }
			}
			break;
		case 'revert':
			if (move_file($user - 1)) {
				echo json_encode(Array('status' => 1, 'message' => $success_msg));
			} else {
				echo json_encode(Array('status' => 0, 'message' => $err_msg));
			}
			break;
		case 'approve':
			if (approve_file()) {
				echo json_encode(Array('status' => 1, 'message' => $success_msg));
            } else {
				echo json_encode(Array('status' => 0, 'message' => $err_msg));
			}
			break;
	}

	function move_file($user) {
		global $fy_id, $init_dt;
		global $mysqli;
		
		$query = 'UPDATE `fund_release` SET verified_by = IF(`verified_by` < `at_user`, null, `verified_by`), `at_user` = ? WHERE `fy_id` = ? AND `init_dt` = ?';
		$stmt = $mysqli->prepare($query);
		if (false === $stmt) {
			trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
		}
		$stmt->bind_param('iss', $user, $fy_id, $init_dt);
		return $stmt->execute();
	}

	function approve_file() {
		global $fy_id, $init_dt;
		global $mysqli;
		$apprv_dt = date('Y-m-d');

		$query = 'UPDATE `fund_release` SET `remarks` = NULL, `at_user` = NULL, `apprvl_dt` = ? WHERE `fy_id` = ? AND `init_dt` = ?';
		$stmt = $mysqli->prepare($query);
		if (false === $stmt) {
			trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
		}
		$stmt->bind_param('sss', $apprv_dt, $fy_id, $init_dt);
		return $stmt->execute();
	}