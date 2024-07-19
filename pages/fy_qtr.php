<?php
include('../config/dbcontroller.php');
if(!empty($_POST['f'])) {
    $fy=$_POST['f'];
    $stmt = $DB_con->prepare("SELECT * FROM fy_quarter WHERE fy=:fy;");
    $stmt->bindValue(':fy', $fy, PDO::PARAM_STR);
    $chk = $stmt->execute();
?>
<option value="" selected>SELECT</option>
<?php
    while($row=$stmt->fetch(PDO::FETCH_BOTH))
    {
?>
<option value="<?php echo htmlentities($row[0]); ?>" ><?php echo htmlentities($row[2]); ?></option>
    <?php
    }
}
?>