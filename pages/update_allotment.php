<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}


    if ( php_uname('s') != 'Darwin') {
        $fmt = new NumberFormatter('en_IN', NumberFormatter::CURRENCY);
        $cur = 'INR';
    }
    include('../config/DbFunction.php');
    $obj = new DbFunction();

	require_once('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

    $status = null;
    $message = $_POST['b_id'];

    switch ($message) {
    case 'Verified':
        // Fetch POST data
        $cci_id = $_POST['cci-id'];
        $init_dt = $_POST['init-dt'];
        // Remove Remarks
        $remarks = null;
        // Update database
        $query = "UPDATE `fund_release` SET `verified_by` = ?, `remarks` = ? WHERE `cci_id` = ? AND `init_dt` = ?";
        $stmt = $mysqli->prepare($query);
        if (false === $stmt) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
        }
        $stmt->bind_param('isss', $_SESSION['login'], $remarks, $cci_id, $init_dt);
        break;

    case 'Deleted':
        // Fetch POST data
        $cci_id = $_POST['cci-id'];
        $init_dt = $_POST['init-dt'];
	    $pdfdir = "../recommendations/";
        // Remove PDF
        // Get no. of District entries remaining of this CCI District
        $query = "SELECT COUNT(*) AS 'n_entries', `cci`.`district`, `fund_release`.`fy_id`
                FROM `fund_release` LEFT JOIN `cci`
                ON `fund_release`.`cci_id` = `cci`.`id`
                WHERE `fund_release`.`init_dt` = ?
                AND `cci`.`district` = (SELECT `cci`.`district` FROM `cci` WHERE `cci`.`id` = ?);";
        $stmt = $mysqli->prepare($query);
        if (false === $stmt) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
        }
        $stmt->bind_param('ss', $init_dt, $cci_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        if ($row['n_entries'] == 1) {
            $filename = $pdfdir . date_format(date_create($init_dt), 'Ymd') . '_' . $row['district'] . '_' . $row['fy_id'] . '.pdf';
            unlink($filename);
        }
        // Update database
        $query = "DELETE FROM `fund_release` WHERE `cci_id` = ? AND `init_dt` =?";
        $stmt = $mysqli->prepare($query);
        if (false === $stmt) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
        }
        $stmt->bind_param('ss', $cci_id, $init_dt);
        break;

    case 'Saved':
        // Fetch POST data
        $cci_id = $_POST['cci-id'];
        $init_dt = $_POST['init-dt'];
        $n_month = intval($_POST['inputNMonths']);
        $n_quarter = ($n_month / 3) + ($n_month % 3 > 0 ? 1 : 0);
        $children_days = intval($_POST['inputChildrenDaysPerMonth']);
        $cwsn_children_days = intval($_POST['inputCWSNDaysPerMonth']);
        $maintenance_cost = floatval(str_replace(',', '', $_POST['inputMaintenanceCost']));
        $bedding_cost = floatval(str_replace(',', '', $_POST['inputBeddingCost']));
        $admin_expenses = floatval(str_replace(',', '', $_POST['inputAdminCost']));
        $cwsn_equip = floatval(str_replace(',', '', $_POST['inputCWSNEquipCost']));
        $cwsn_addl_grant = floatval(str_replace(',', '', $_POST['inputCWSNAddlCost']));
        $cwsn_medical = floatval(str_replace(',', '', $_POST['inputCWSNMedical']));
        $staff_sal = floatval(str_replace(',', '', $_POST['inputStaffSalary']));
        $cwsn_staff_sal = floatval(str_replace(',', '', $_POST['inputCWSNStaffSalary']));
        $amnt_adjst = floatval(str_replace(',', '', $_POST['inputAmntAdjustment']));
        $dist_recommendation = floatval(str_replace(',', '', $_POST['inputDistRecommendation']));
        $amnt_released = floatval(str_replace(',', '', $_POST['inputFundReleased']));
        $remarks = $obj->get_user($_SESSION['login']) . ' (' . date('d-m-Y') . ')' . ': ' . $_POST['inputRemarks'];
        // Update database
        $query = "UPDATE `fund_release` SET `n_months` = ?, `children_days` = ?, `cwsn_child_days` = ?, `maintenance_cost` = ?, `bedding_cost` = ?, `admin_expenses` = ?, `cwsn_equip` = ?, `cwsn_addl_grant` = ?, `cwsn_medical` = ?, `staff_sal` = ?, `cwsn_staff_sal` = ?, `amnt_adjstmnt` = ?, `dist_recommendation` = ?, `amnt_released` = ?, `remarks` = CONCAT(IFNULL(`remarks`, ''), '\n', ?) WHERE `cci_id` = ? AND `init_dt` = ?";
        $stmt = $mysqli->prepare($query);
        if (false === $stmt) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
        }
        $stmt->bind_param('iiidddddddddddsss', $n_month, $children_days, $cwsn_children_days,$maintenance_cost, $bedding_cost, $admin_expenses, $cwsn_equip, $cwsn_addl_grant, $cwsn_medical, $staff_sal, $cwsn_staff_sal, $amnt_adjst, $dist_recommendation, $amnt_released, $remarks, $cci_id, $init_dt);
        break;
    }
    echo json_encode(Array("status" => $stmt->execute(), "message" => $message));
