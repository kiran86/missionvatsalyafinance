<?php
    $home_data = [];
	$saa_data = [];
	$os_data = [];
	$uploaddir = "../csv/";
	$uploadfile = $uploaddir . basename($_FILES['csvfile']['name']);

	if(isset($_FILES["csvfile"]) && $_FILES["csvfile"]["error"] === UPLOAD_ERR_OK) {
		if(move_uploaded_file($_FILES["csvfile"]["tmp_name"], $uploadfile)) {
			chmod($uploadfile, 0777);
		} else {
			error_log('There was an error occured during upload!');
		}
	} else { 
        error_log('Error: File could not be uploaded!');
		exit(1);
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
		if ($row[8] == "")
			continue;

		//Populate each array element
		switch ($row[5]) {
			case 'Children Home':
			case 'Children Home CWSN':
				$home_data[$n_home][0] = $n_home + 1;
				$home_data[$n_home][1] = $row[1];
				$home_data[$n_home][2] = $row[2];
				$home_data[$n_home][3] = $row[4];
				$home_data[$n_home][4] = 3;
				$home_data[$n_home][5] = $row[8];
				$home_data[$n_home][6] = $row[9];
				$home_data[$n_home][7] = (int)$row[8] * (int)$home_data[$n_home][4] * 3000.0;
				$home_data[$n_home][8] = (int)$row[8] * 250.0;
				$home_data[$n_home][9] = (int)$row[9] * (int)$home_data[$n_home][4] * 4400.0;
				$home_data[$n_home][10] = (int)$home_data[$n_home][3] * 250000.0;
				$home_data[$n_home][11] = (int)$home_data[$n_home][3] * 100000.0;
				$home_data[$n_home][12] = (int)$home_data[$n_home][3] * 657280.0;
				$home_data[$n_home][13] = (int)$home_data[$n_home][3] * 143191.0;
				$home_data[$n_home][14] = $home_data[$n_home][12] + $home_data[$n_home][13];
				$home_data[$n_home][15] = $home_data[$n_home][7] 
											+ $home_data[$n_home][8]
											+ $home_data[$n_home][9]
											+ $home_data[$n_home][10]
											+ $home_data[$n_home][11]
											+ $home_data[$n_home][14];
				$home_data[$n_home][16] = (double)$row[11];
				$home_data[$n_home][17] = $home_data[$n_home][15] > $home_data[$n_home][16] ? $home_data[$n_home][16] : $home_data[$n_home][15]; 
				$n_home++;
                break;
            case 'Specialized Adoption Agency':
				$saa_data[$n_saa++] = $row;
				$saa_data[$n_saa - 1][0] = $n_saa;
                break;
            case 'Open Shelter':
				$os_data[$n_os++] = $row;
				$os_data[$n_os - 1][0] = $n_os;
                break;
		}
    }
    echo json_encode(Array('homedata' => $home_data, 'saadata' => $saa_data, 'os_data' => $os_data));
?>