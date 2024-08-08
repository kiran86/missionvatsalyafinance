<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

	$quarter = "";
	$uploaddir = "";
	$uploadfile ="";
    $home_data = [];
	$saa_data = [];
	$os_data = [];
	$invalid = [];

	include('../config/DbFunction.php');
	$obj=new DbFunction();

	$uploaddir = "../csv/";
	if ($_SESSION['login'] == 1 && isset($_FILES["csvfile"]) && $_FILES["csvfile"]["error"] === UPLOAD_ERR_OK) {
		$uploadfile = $uploaddir . $_POST['fy-qtr'] . ".csv";

		if(move_uploaded_file($_FILES["csvfile"]["tmp_name"], $uploadfile)) {
			chmod($uploadfile, 0777);
		} else {
			error_log('There was an error occured during upload!');
		}
	} else {
		$uploadfile = $uploaddir . $_POST['fy-qtr'] . ".csv";
	}

	$n_home = 0;
	$n_saa = 0;
	$n_os = 0;
	$districts = [];

	$csv_data = file($uploadfile);
	foreach ($csv_data as $key => $value) {
		// skip header line
		if ($key == 0)
			continue;

        $row = str_getcsv($value);
		// skip rows with empty children days
		if (count($row) < 13 || $row[8] == '' || $row[9] == '' || $row[10] == '')
			continue;

		// skip rows with ccis whose allotment for the given quarter have been made already
		if ($obj->is_allotment_exists($row[0], $row[7])) {
			array_push($invalid, $row[1] . ' ' . $row[2] . ' ' . $row[5]);
			continue;
		}

		$rs_fy = $obj->get_fy_qtr($row[7]);
		while($res=$rs_fy->fetch_object()) {
			$quarter = $res->quarter;
            break;
		}

		$expenses = $obj->get_expense_structure($row[0]);
		$n_month = intval($row[8]);
		$n_quarter = ($n_month / 3) + ($n_month % 3) > 0 ? 1 : 0;
		// Collect unique districts
		if (array_search($row[1], $districts, true) === false) {
			array_push($districts, $row[1]);
		}

		//Populate each array element
		switch ($row[5]) {
			case 'Children Home':
			case 'Observation Home':
			case 'Special Home':
			case 'Place of Safety':
			case 'Children Home CWSN':
				$home_data[$n_home][0] = $row[7];
				$home_data[$n_home][1] = $row[0];
				$home_data[$n_home][2] = $n_home + 1;
				$home_data[$n_home][3] = $row[1];
				$home_data[$n_home][4] = $row[2] . ' (' . $row[5] . (($row[6] == 'Male') ? ' for Boys' : ' for Girls' . $row[6]). ')';
				$home_data[$n_home][5] = $row[4];
				$home_data[$n_home][6] = $row[3];
				$home_data[$n_home][7] = $n_month;
				$home_data[$n_home][8] = $row[9];
				$home_data[$n_home][9] = $row[10];
				// Maintenance cost
				$home_data[$n_home][10] = $n_month * intval($row[9]) * $expenses[0][0];
				// Bedding cost
				$home_data[$n_home][11] = $n_quarter * intval($row[9]) * $expenses[0][1];
				// CWSN fund
				$home_data[$n_home][12] = $n_month * intval($row[10]) * ($expenses[0][4] + $expenses[0][5]);
				// Admin cost
				$home_data[$n_home][13] = $n_quarter * $expenses[0][2];
				// CWSN quip
				$home_data[$n_home][14] = $n_quarter * $expenses[0][3];
				// Staff salary
				$home_data[$n_home][15] = $n_month * $expenses[0][6];
				// CWSN staff salary
				$home_data[$n_home][16] = $n_month * $expenses[0][7];
				// Total salary
				$home_data[$n_home][17] = $home_data[$n_home][15] + $home_data[$n_home][16];
				// Total recurring
				$home_data[$n_home][18] = floatval($home_data[$n_home][10]) +
											floatval($home_data[$n_home][11]) +
											floatval($home_data[$n_home][12]) +
											floatval($home_data[$n_home][13]) +
											floatval($home_data[$n_home][14]) +
											floatval($home_data[$n_home][17]);
				$home_data[$n_home][19] = floatval($row[11]);
				$home_data[$n_home][20] = floatval($row[12]);
				$home_data[$n_home][21] = ($home_data[$n_home][18] - $home_data[$n_home][19]) > $home_data[$n_home][20] ? 
											$home_data[$n_home][20] : 
											$home_data[$n_home][18] - $home_data[$n_home][19];
				$n_home++;
                break;
            case 'Specialized Adoption Agency':
				$saa_data[$n_saa][0] = $row[7];
				$saa_data[$n_saa][1] = $row[0];
				$saa_data[$n_saa][2] = $n_saa + 1;
				$saa_data[$n_saa][3] = $row[1];
				$saa_data[$n_saa][4] = $row[2] . ' (' . $row[5] . ')';
				$saa_data[$n_saa][5] = $row[4];
				$saa_data[$n_saa][6] = $row[3];
				$saa_data[$n_saa][7] = $row[8];
				$saa_data[$n_saa][8] = $row[9];
				// Maintanence Cost
				$saa_data[$n_saa][9] = (int)$row[8] * (int)$row[9] * $expenses[0][0];
				// Admin cost
				$saa_data[$n_saa][10] = $expenses[0][2];
				// Staff salary
				$saa_data[$n_saa][11] = $n_month * $expenses[0][6];
				$saa_data[$n_saa][12] = floatval($saa_data[$n_saa][9]) + 
										floatval($saa_data[$n_saa][10]) +
										floatval($saa_data[$n_saa][11]);
				$saa_data[$n_saa][13] = floatval($row[11]);
				$saa_data[$n_saa][14] = floatval($row[12]);
				$saa_data[$n_saa][15] = ($saa_data[$n_saa][12] - $saa_data[$n_saa][13]) > $saa_data[$n_saa][14]
											? $saa_data[$n_saa][14]
											: $saa_data[$n_saa][12] - $saa_data[$n_saa][13];
				$n_saa++;
                break;
            case 'Open Shelter':
				$os_data[$n_os][0] = $row[0];
				$os_data[$n_os][1] = $row[0];
				$os_data[$n_os][2] = $n_os + 1;
				$os_data[$n_os][3] = $row[1];
				$os_data[$n_os][4] = $row[2] . ' (' . $row[5] . ')';
				$os_data[$n_os][5] = $row[4];
				$os_data[$n_os][6] = $row[3];
				$os_data[$n_os][7] = $row[8];
				$os_data[$n_os][8] = $row[9];
				// Maintanance cost
				$os_data[$n_os][9] = (int)$row[8] * (int)$row[9] * $expenses[0][0];
				// Administrative cost
				$os_data[$n_os][10] = $expenses[0][2];
				// Staff salary
				$os_data[$n_os][11] = $n_month * $expenses[0][6];
				$os_data[$n_os][12] = 	floatval($os_data[$n_os][9]) + 
										floatval($os_data[$n_os][10]) +
										floatval($os_data[$n_os][11]);
				$os_data[$n_os][13] = floatval($row[11]);
				$os_data[$n_os][14] = floatval($row[12]);
				$os_data[$n_os][15] = ($os_data[$n_os][12] - $os_data[$n_os][13]) > $os_data[$n_os][14]
										? $os_data[$n_os][14]
										: $os_data[$n_os][12] - $os_data[$n_os][13];
				$n_os++;
                break;
		}
    }
    echo json_encode(Array('fyid' => $_POST['fy-qtr'], 'quarter' => $quarter, 'districts' => $districts, 'homedata' => $home_data, 'saadata' => $saa_data, 'osdata' => $os_data, 'invalid' => $invalid));
?>