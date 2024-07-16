<?php
/**
 * DB Connection settings for online hosting.
 */
// $DB_host = "sql310.infinityfree.com";
// $DB_port = 3306;
// $DB_user = "if0_36906119";
// $DB_pass = "dpTzUHmRe2G";
// $DB_name = "if0_36906119_missionvatsalya";

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