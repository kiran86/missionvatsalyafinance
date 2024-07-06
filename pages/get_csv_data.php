<?php
    $home_data = [];
	$saa_data = [];
	$os_data = [];
	
	// formatter for Indian rupee
	$fmt = numfmt_create("en_IN", NumberFormatter::CURRENCY);
	$fmt->setSymbol(NumberFormatter::CURRENCY_SYMBOL, '');

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
		if (count($row) < 11 || $row[8] == '' || $row[9] == '' || $row[10] == '')
			continue;

		//Populate each array element
		switch ($row[5]) {
			case 'Children Home':
			case 'Children Home CWSN':
				$home_data[$n_home][0] = $row[0];
				$home_data[$n_home][1] = $n_home + 1;
				$home_data[$n_home][2] = $row[1];
				$home_data[$n_home][3] = $row[2] . ' (' . $row[5] . (($row[6] == 'Male') ? ' for Boys' : ' for Girls' . $row[6]). ')';
				$home_data[$n_home][4] = $row[4];
				$home_data[$n_home][5] = $row[3];
				$home_data[$n_home][6] = $row[8];
				$home_data[$n_home][7] = $row[9];
				$home_data[$n_home][8] = $row[10];
				$home_data[$n_home][9] = numfmt_format_currency($fmt, (int)$row[8] * (int)$row[9] * 3000.0, '');
				$home_data[$n_home][10] = numfmt_format_currency($fmt, (int)$row[8] * (int)$row[9] * 250.0, '');
				$home_data[$n_home][11] = numfmt_format_currency($fmt, (int)$row[8] * (int)$row[10] * 4400.0, '');
				$home_data[$n_home][12] = numfmt_format_currency($fmt, 250000.0, '');
				$home_data[$n_home][13] = numfmt_format_currency($fmt, ($row[5] == 'Children Home CWSN'? 1.0 : 0.0) * 100000.0, '');
				$home_data[$n_home][14] = numfmt_format_currency($fmt, 657280.0, '');
				$home_data[$n_home][15] = numfmt_format_currency($fmt, ($row[5] == 'Children Home CWSN'? 1.0 : 0.0) * 143191.0, '');
				$home_data[$n_home][16] = $home_data[$n_home][14] + $home_data[$n_home][15];
				$home_data[$n_home][17] = numfmt_format_currency($fmt,
											floatval($home_data[$n_home][9]) +
											floatval($home_data[$n_home][10]) +
											floatval($home_data[$n_home][11]) +
											floatval($home_data[$n_home][12]) +
											floatval($home_data[$n_home][13]) +
											floatval($home_data[$n_home][16]),
										'');
				$home_data[$n_home][18] = numfmt_format_currency($fmt, (float)$row[11], '');
				$home_data[$n_home][19] = numfmt_format_currency($fmt, (float)$home_data[$n_home][17] > (float)$home_data[$n_home][18] ? (float)$home_data[$n_home][18] : (float)$home_data[$n_home][17], '');
				error_log(floatval($home_data[$n_home][14]));
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