<?php
require('Database.php');

class DbFunction{
	function get_login(){
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT * FROM login";
        $stmt= $mysqli->query($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		}
        return $stmt;
	}

	function get_user($user_id) {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT `user_type` FROM `login` WHERE `id` = '$user_id'";
        $stmt= $mysqli->query($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		}
		$user= $stmt->fetch_column(0);
        return $user;
	}

	function login($loginid,$password){
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT id, password FROM login where id=? and password=? ";
		$stmt= $mysqli->prepare($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		} else {
			$stmt->bind_param('ss',$loginid,$password);
			$stmt->execute();
			$stmt->bind_result($loginid,$password);
			$rs=$stmt->fetch();
			if(!$rs)
			{
				echo "<script>alert('Invalid password')</script>";
				header('location:login.php');
			} else {
				header('location:view.php');
			}
		}
	}

	function get_fys() {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT DISTINCT(fy) FROM fy_quarter";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function generate_csv($fy_qtr) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT cci.id, cci.district, cci.cci_name, cci.cci_run_by, cci.cci_unit_no, cci.category, cci.cci_gender
					FROM cci LEFT JOIN fund_release
					ON cci.id = fund_release.cci_id
					WHERE fund_release.fy_id IS NULL OR fund_release.fy_id != '". $fy_qtr . "'
					ORDER BY cci.district, cci.cci_run_by, cci.cci_name, cci.cci_unit_no";
		$stmt= $mysqli->query($query);
		$cci_cat = $stmt->fetch_all(MYSQLI_ASSOC);
		$output = fopen("php://output",'w') or die("Can't open php://output");
		header("Content-Type:text/csv"); 
		header("Content-Disposition:attachment;filename=". $fy_qtr .".csv"); 
		fputcsv($output, array('id', 'district', 'cci_name', 'cci_run_by', 'cci_unit_no', 'category', 'cci_gender', 'fy_id', 'no_of_months', 'children_days', 'cwsn_children_days' ,'dist_recommendation'));
		foreach($cci_cat as $row) {
			$row['fy_id'] = $fy_qtr;
			$row['no_of_months'] = 3;
			fputcsv($output, $row);
		}
		fclose($output) or die("Can't close php://output");
		exit();
	}

	function get_fy_qtr($fy_id) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT quarter FROM fy_quarter WHERE fy_id = '" . $fy_id . "'";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_fy_allotment() {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = 'SELECT * FROM `fy_quarter` LEFT JOIN `login` ON `fy_quarter`.`at_user_id` = `login`.`id` ORDER BY `fy_id`;';$query = 'SELECT * FROM `fy_quarter` LEFT JOIN `login` ON `fy_quarter`.`at_user_id` = `login`.`id` ORDER BY `fy_id`;';
        $stmt= $mysqli->query($query);
        return $stmt;
	}

	function get_fy_status() {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT 
					`fy_quarter`.*, 
					`login`.`user_type`, 
					COUNT(`fund_release`.`cci_id`) AS 'n_cci', 
					SUM(`fund_release`.`amnt_released`) AS 't_amount'
					FROM
						`fy_quarter`
					LEFT JOIN 
						`login` ON `fy_quarter`.`at_user_id` = `login`.`id`
					LEFT JOIN 
						`fund_release` ON `fy_quarter`.`fy_id` = `fund_release`.`fy_id`
					GROUP BY 
						`fy_quarter`.`fy_id`, 
						`login`.`user_type`;";
        $rs= $mysqli->query($query);
		while ($r = $rs->fetch_array()) {
			// error_log($r[0]);
			$arr[] = $r;
		}
		$rs->close();
		return $arr;
	}

	function set_fy_qtr_user($fy_id, $user) {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "UPDATE fy_quarter SET user_level = ? WHERE fy_id = ?";
        $stmt= $mysqli->prepare($query);
		if (false === $stmt) {
			trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
		} else {
			$stmt->bind_param('is', $user, $fy_id);
            $stmt->execute();
		}
        return $stmt->affected_rows;
	}
}