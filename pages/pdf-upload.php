<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

    $fy_id = $_POST['fy-id'];
    $uploaddir = "../recommendations/";
	$uploadfile ="";
    $flag = true;
    foreach ($_FILES as $key => $val) {
        if ($_SESSION['login'] == 1 && isset($_FILES[$key]) && $_FILES[$key]["error"] === UPLOAD_ERR_OK) {
            $uploadfile = $uploaddir . substr($key, 3) . "_" . $fy_id . ".pdf";
            if (!move_uploaded_file($_FILES[$key]["tmp_name"], $uploadfile)) {
                $flag = false;
            }
        }
    }

    if ($flag)
        echo "Upload Successfull.";
    else
        echo "Error: File could not be uploaded!";