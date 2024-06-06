<?php
include('dbcontroller.php');
if(!empty($_POST["id"]) && !empty($_POST["rem"])) 
{
    $work_id=$_POST['id'];
    $remarks = $_POST['rem'];
    $stmt = $DB_con->prepare("SELECT * FROM wrkpndcy_rvw WHERE work_id = :id");
    $stmt->bindValue(':id', $work_id, PDO::PARAM_STR);
    $chk = $stmt->execute();
    if($stmt->rowCount() > 0)
        $stmt = $DB_con->prepare("UPDATE wrkpndcy_rvw SET remarks = :rem WHERE work_id = :id");
    else
        $stmt = $DB_con->prepare("INSERT INTO wrkpndcy_rvw (work_id, remarks) VALUES (:id, :rem)");
    $stmt->bindValue(':id', $work_id, PDO::PARAM_STR);
    $stmt->bindValue(':rem', $remarks, PDO::PARAM_STR);
    $chk = $stmt->execute();

    if($chk) {
?>
Remarks Updated!
<?php
    } else {
?>
Remarks Failed to Update!
<?php }} ?>