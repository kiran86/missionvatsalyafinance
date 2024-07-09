<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

	include('../config/DbFunction.php');
	$obj=new DbFunction();

    switch ($_SESSION['login']) {
		case 1:
			$uploaddir = "../csv/";

			if(isset($_FILES["csvfile"]) && $_FILES["csvfile"]["error"] === UPLOAD_ERR_OK) {
				$uploadfile = $uploaddir . basename($_FILES['csvfile']['name']);
				if(file_exists($uploadfile) && $obj->set_fy_qtr_user($_POST['fy-qtr'], $_SESSION['login'] - 1)) {
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