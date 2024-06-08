<?php
require('Database.php');
//$db = Database::getInstance();
//$mysqli = $db->getConnection();
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
	function login($loginid,$password){
		echo "<script>alert('".$password."')</script>";
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
				echo "<script>alert('Invalid Details')</script>";
				header('location:login.php');
			} else {
				header('location:view.php');
			}
		}
	}

	function show_jobs() {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT * FROM est_fund_details";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_est_details($est_id, $cat) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		switch ($cat) {
			case "cci":
				$table = "cci_details";
				$id = "cci";
				break;
			case "cwc":
				$table = "cwc_details";
				$id = "cwc";
				break;
			case "jjb":
				$table = "jjb_details";
				$id = "jjb";
				break;
			case "dcpu":
				$table = "dcpu_details";
				$id = "jjb";
				break;
			case "other":
				$table = "other_est_details";
				$id = "est";
				break;
		}
		$query = "SELECT * FROM " . $table . " WHERE ".$id."_id='{$est_id}'";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_ests($cat) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
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
		$query = "SELECT * FROM " . $table . " ORDER BY district ASC";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_work_status($wrk_id) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT * FROM work_status WHERE work_id='" . $wrk_id . "'";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_districts() {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT district FROM dcpu_details ORDER BY district ASC";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_wrkstatuses() {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT * FROM work_status ORDER BY work_id ASC";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_job_details($job_id) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT * FROM est_fund_details WHERE job_id = '".$job_id."'";
		$stmt = $mysqli->query($query);
		return $stmt;
	}

	function get_wrkpndcyrmrks($job_id) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT * FROM wrkpndcy_rvw WHERE work_id = '".$job_id."'";
		//echo "<script>alert('".addslashes($query)."')</script>";
		$stmt = $mysqli->query($query);
		return $stmt;
	}

	function create_work($district, $category, $estid, $finyear, $wrkdesc, $propamnt, $dcrtfno, $deptfno, $aafsdate, 
						$aafsamnt, $ftrdate, $ftramnt, $fntrdate, $fntramnt, $ucdate, $wrkstatus){
			
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		date_default_timezone_set('Asia/Kolkata');
		//	echo $session;exit;
		$query = "INSERT INTO `est_fund_details` (`job_id`, `est_id`, `category`, `fin_year`, `work_desc`, `prop_amnt`, `dcrt_file_no`,
				`dept_file_no`, `aafs_date`, `aafs_amnt`, `first_trench_dt`, `first_trench_amnt`, `final_trench_dt`, `final_trench_amnt`,
				`uc_date`, `work_status_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		$jobid="job_" . date("YmdHi");
		
		if($aafsdate == "")
			$aafsdate = NULL;
		else
			$aafsdate = date('Y-m-d', strtotime($aafsdate));
		if($ftrdate == "")
			$ftrdate = NULL;
		else
			$ftrdate = date('Y-m-d', strtotime($ftrdate));
		if($fntrdate == "")
			$fntrdate = NULL;
		else
			$fntrdate = date('Y-m-d', strtotime($fntrdate));
		if($ucdate == "")
			$ucdate = NULL;
		else
			$ucdate = date('Y-m-d', strtotime($ucdate));

		$stmt= $mysqli->prepare($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		} else {
			$check = $stmt->bind_param('sssssdsssdsdsdss', 
				$jobid, $estid, $category, $finyear, $wrkdesc, $propamnt, $dcrtfno, $deptfno, $aafsdate, 
				$aafsamnt, $ftrdate, $ftramnt, $fntrdate, $fntramnt, $ucdate, $wrkstatus);
			$stmt->execute();
			if($stmt->affected_rows > 0)
				echo "<script>alert('Successfully Created New Work!')</script>";
			else
				echo "<script>alert('ERROR: Work creation failed with ".addslashes($stmt->error)."')</script>";
		}
	}
	
	function edit_work($job_id, $district, $category, $estid, $finyear, $wrkdesc, $propamnt, $dcrtfno, $deptfno, $aafsdate, 
						$aafsamnt, $ftrdate, $ftramnt, $fntrdate, $fntramnt, $ucdate, $wrkstatus){
			
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		date_default_timezone_set('Asia/Kolkata');
		//	echo $session;exit;
		$query = "UPDATE est_fund_details SET est_id=?, category=?, fin_year=?, work_desc=?, prop_amnt=?, dcrt_file_no=?,
				dept_file_no=?, aafs_date=?, aafs_amnt=?, first_trench_dt=?, first_trench_amnt=?, final_trench_dt=?, final_trench_amnt=?,
				uc_date=?, work_status_id=? WHERE job_id=?";
		
		if($aafsdate == "")
			$aafsdate = NULL;
		else
			$aafsdate = date('Y-m-d', strtotime($aafsdate));
		if($ftrdate == "")
			$ftrdate = NULL;
		else
			$ftrdate = date('Y-m-d', strtotime($ftrdate));
		if($fntrdate == "")
			$fntrdate = NULL;
		else
			$fntrdate = date('Y-m-d', strtotime($fntrdate));
		if($ucdate == "")
			$ucdate = NULL;
		else
			$ucdate = date('Y-m-d', strtotime($ucdate));

		$stmt= $mysqli->prepare($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		} else {
			$check = $stmt->bind_param('ssssdsssdsdsdsss', 
				$estid, $category, $finyear, $wrkdesc, $propamnt, $dcrtfno, $deptfno, $aafsdate, 
				$aafsamnt, $ftrdate, $ftramnt, $fntrdate, $fntramnt, $ucdate, $wrkstatus, $job_id);
			$stmt->execute();
			if($stmt->affected_rows > 0)
				echo "<script>alert('Successfully Updated Work!')</script>";
			else
				echo "<script>alert('ERROR: Work creation failed with ".addslashes($stmt->error)."')</script>";
		}
	}

	function mis_wrkstscount($dist) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT T1.work_status_id, COUNT(T1.job_id) AS count FROM est_fund_details AS T1 JOIN (SELECT cci_id AS est_id, district FROM cci_details UNION ALL SELECT cwc_id AS est_id, district FROM cwc_details UNION ALL SELECT jjb_id AS est_id, district FROM jjb_details UNION ALL SELECT est_id AS est_id, district FROM other_est_details UNION ALL SELECT dcpu_id AS est_id, district FROM dcpu_details) AS T2 WHERE T1.est_id = T2.est_id AND T2.district = '$dist' GROUP BY T1.work_status_id ORDER BY T1.work_status_id ASC";
		$stmt = $mysqli->query($query);
		//echo "<script>alert('".$stmt->num_rows."')</script>";
		return $stmt;
	}
}