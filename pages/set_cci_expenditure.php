<?php
session_start ();
if (!(isset( $_SESSION ['login']))) {
    header ( 'location:../index.php' );
}
require_once('../config/Database.php');
$db = Database::getInstance();
$mysqli = $db->getConnection();

$sql = "UPDATE `cci_recurring_exp`
        SET `maintenance_cost` = ?,
            `bedding_cost` = ?,
            `admin_expenses` = ?,
            `cwsn_equip` = ?,
            `cwsn_addl_grant` = ?,
            `cwsn_medical` = ?,
            `staff_sal` = ?,
            `cwsn_staff_sal` = ?
        WHERE `cci_recurring_exp`.`id` = ?";
$stmt = $mysqli->prepare($sql);
if ($stmt === false) {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    echo json_encode(Array('status' => 0, 'message' =>'An error occured!' . $err_msg));
}
$stmt->bind_param('dddddddds', 
                    $_POST['maintenance_cost'],
                    $_POST['bedding_cost'],
                    $_POST['admin_expenses'],
                    $_POST['cwsn_equip'],
                    $_POST['cwsn_addl_grant'],
                    $_POST['cwsn_medical'],
                    $_POST['staff_sal'],
                    $_POST['cwsn_staff_sal'],
                    $_POST['cci_id']);
if ($stmt->execute()) {
    // error_log($sql);
    echo json_encode(Array('status' => 1, 'message' => 'CCI Expenditure updated successfully!'));
} else {
    echo json_encode(Array('status' => 0, 'message' => 'An error occured while updating CCI Expenditure detaisl!'));
}