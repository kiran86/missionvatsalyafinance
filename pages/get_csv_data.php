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
				$home_data[$n_home++] = $row;
				$home_data[$n_home - 1][0] = $n_home;
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