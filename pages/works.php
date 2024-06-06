<?php
include('dbcontroller.php');
if(!empty($_POST["d"]) && !empty($_POST["c"])) 
{
    $dist=$_POST['d'];
    $cat=strtolower($_POST['c']);
    //$est=$_POST[e];
    switch ($cat) {
        case "cci":
            $table = "cci_details";
            break;
        case "cwc":
            $table = "cwc_details";
            break;
        case "jjb":
            $table = "jjb_details";
            break;
        case "dcpu":
            $table = "dcpu_details";
            break;
        case "other":
            $table = "other_est_details";
            break;
    }
    $stmt = $DB_con->prepare("SELECT * FROM ".$table." WHERE district=:district");
    $stmt->bindValue(':district', $dist, PDO::PARAM_STR);
    $chk = $stmt->execute();

?>
<option value="" <?php if($_POST['e']) echo "selected" ?>>SELECT</option>
<?php
    while($row=$stmt->fetch(PDO::FETCH_BOTH))
    {
?>
<option value="<?php echo htmlentities($row[0]); ?>" <?php if($_POST["e"] == $row[2]) echo "selected" ?> ><?php echo htmlentities($row[2]); ?></option>
    <?php
    }
}
?>