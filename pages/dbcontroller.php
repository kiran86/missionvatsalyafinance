<?php
$DB_host = "sql205.epizy.com";
$DB_port = 3306;
$DB_user = "epiz_28111343";
$DB_pass = "7wHqmGF1hbCZ";
$DB_name = "epiz_28111343_infradevlop";
try
{
    $DB_con = new PDO("mysql:host={$DB_host};port={$DB_port};dbname={$DB_name}",$DB_user,$DB_pass);
    $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    echo "<script>alert('".$e->getMessage()."')</script>";
}
?>