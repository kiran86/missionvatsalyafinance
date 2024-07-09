<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

	include('../config/DbFunction.php');
	$obj=new DbFunction();

    switch ($_SESSION['login']) {
		case 1:
		case 2:
			$uploaddir = "../csv/";
			$uploadfile = $uploaddir . $_POST['fy-qtr'] . ".csv";
			if(file_exists($uploadfile) && $obj->set_fy_qtr_user($_POST['fy-qtr'], $_SESSION['login'] + 1)) {
				echo json_encode(Array('status' => 1, 'message' =>'File forwarded successfully.'));
			} else {
				error_log('There was an error occured during upload!');
				echo json_encode(Array('status' => 0, 'message' =>'There was an error occured during upload!'));
			}
			break;
		case 3:
			break;
	}