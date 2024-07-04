<?php
    $data = [];
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

	$csv_data = file($uploadfile);
	foreach ($csv_data as $key => $value) {
		// skip header line
		if ($key == 0)
			continue;
        $row = str_getcsv($value);
		// skip empty children days
		if ($row[8] == "")
			continue;

        $data[$key] = $row;
		error_log($key . ": " . implode(", ", $data[$key]));
    }
	//print_r($data);
    echo json_encode(['data' => $data]);
?>