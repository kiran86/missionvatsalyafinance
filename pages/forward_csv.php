<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

    switch ($_SESSION['login']) {
		case 1:
			$uploaddir = "../csv/";
			$uploadfile = $uploaddir . basename($_FILES['csvfile']['name']);

			if(isset($_FILES["csvfile"]) && $_FILES["csvfile"]["error"] === UPLOAD_ERR_OK) {
				if(move_uploaded_file($_FILES["csvfile"]["tmp_name"], $uploadfile)) {
					if (!chmod($uploadfile, 0555))
                        error_log('Failed to change permissions of the uploaded file.');
                    
                    echo json_encode(Array('status' => 1, 'message' =>'File forwarded successfully.'));
				} else {
					error_log('There was an error occured during upload!');
                    echo json_encode(Array('status' => 0, 'message' =>'There was an error occured during upload!'));
				}
			} else { 
				error_log('Error: File could not be uploaded!');
                echo json_encode(Array('status' => 0, 'message' =>'File could not be uploaded!'));
			}
			break;
		case 2:
			break;
	}