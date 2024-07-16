<?php

/**
 * Database connection settings for testing.
 */
$DB_host = "127.0.0.1";
$DB_port = 3306;
$DB_user = "root";
$DB_pass = "";
$DB_name = "missionvatsalya";

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