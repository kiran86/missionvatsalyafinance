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

	$csv_data = file($uploadfile);
	foreach ($csv_data as $key => $value) {
		// skip header line
		if ($key == 0)
			continue;
        $row = str_getcsv($value);
		// skip rows with empty children days
		if (count($row) < 11 || $row[8] == '' || $row[9] == '' || $row[10] == '')
			continue;

		$rs_fy = $obj->get_fy_qtr($row[7]);
		while($res=$rs_fy->fetch_object()) {
			$quarter = $res->quarter;
            break;
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
				$home_data[$n_home][7] = $row[8];
				$home_data[$n_home][8] = $row[9];
				$home_data[$n_home][9] = $row[10];
				$home_data[$n_home][10] = (int)$row[8] * (int)$row[9] * 3000.0;
				$home_data[$n_home][11] = (int)$row[8] * (int)$row[9] * 250.0;
				$home_data[$n_home][12] = (int)$row[8] * (int)$row[10] * 4400.0;
				$home_data[$n_home][13] = 250000.0;
				$home_data[$n_home][14] = ($row[5] == 'Children Home CWSN'? 1.0 : 0.0) * 100000.0;
				$home_data[$n_home][15] = 657280.0;
				$home_data[$n_home][16] = ($row[5] == 'Children Home CWSN'? 1.0 : 0.0) * 143191.0;
				$home_data[$n_home][17] = $home_data[$n_home][15] + $home_data[$n_home][16];
				$home_data[$n_home][18] = floatval($home_data[$n_home][10]) +
											floatval($home_data[$n_home][11]) +
											floatval($home_data[$n_home][12]) +
											floatval($home_data[$n_home][13]) +
											floatval($home_data[$n_home][14]) +
											floatval($home_data[$n_home][17]);
				$home_data[$n_home][19] = (float)$row[11];
				$home_data[$n_home][20] = (float)$home_data[$n_home][18] > (float)$home_data[$n_home][19] ? (float)$home_data[$n_home][19] : (float)$home_data[$n_home][18];
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
				$saa_data[$n_saa][9] = (int)$row[8] * (int)$row[9] * 2500.0;
				$saa_data[$n_saa][10] = 56250.0;
				$saa_data[$n_saa][11] = 368204.0;
				$saa_data[$n_saa][12] = floatval($saa_data[$n_saa][9]) + 
											floatval($saa_data[$n_saa][10]) +
											floatval($saa_data[$n_saa][11]);
				$saa_data[$n_saa][13] = floatval($row[12]);
				$saa_data[$n_saa][14] = $saa_data[$n_saa][12] > $saa_data[$n_saa][13] ? $saa_data[$n_saa][13] : $saa_data[$n_saa][12];
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
				$os_data[$n_os][9] = (int)$row[8] * (int)$row[9] * 2500.0;
				$os_data[$n_os][10] = 125000.0;
				$os_data[$n_os][11] = 325247.0;
				$os_data[$n_os][12] = floatval($os_data[$n_os][9]) + 
											floatval($os_data[$n_os][10]) +
											floatval($os_data[$n_os][11]);
				$os_data[$n_os][13] = floatval($row[11]);
				$os_data[$n_os][14] = $os_data[$n_os][12] > $os_data[$n_os][13] ? $os_data[$n_os][13] : $os_data[$n_os][12];
				$n_os++;
                break;
		}
    }
    echo json_encode(Array('quarter' => $quarter, 'homedata' => $home_data, 'saadata' => $saa_data, 'osdata' => $os_data));
?>