<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

	require_once('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

    $cci_id = $_POST['cci-id'];
    $init_dt = $_POST['init-dt'];
    $n_month = $_POST['inputNMonths'];
    $n_quarter = ($n_month / 3) + ($n_month % 3 > 0 ? 1 : 0);
    $children_days = $_POST['inputChildrenDaysPerMonth'];
    $cwsn_children_days = $_POST['inputCWSNDaysPerMonth'];
    $amnt_adjst = $_POST['inputAMntAdjstment'];
    $dist_recommendation = $_POST['inputDistRecommendation'];

    // Fetch expense structure for this cci
    $exp = [];
    $sql = "SELECT `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal` FROM `cci_recurring_exp` WHERE `id` = '". $cci_id. "'";
    $rs= $mysqli->query($sql);
    while ($r = $rs->fetch_array()) {
        $exp = $r;
    }
    $rs->close();

    // Recalculate expenditure allocation
    $maintenance_cost = $exp['maintenance_cost'] * $n_month * $children_days;
    $bedding_cost = $exp['bedding_cost'] * $children_days * $n_quarter;
    $admin_expenses = $exp['admin_expenses'] * $n_quarter;
    $cwsn_equip = $exp['cwsn_equip'] * $n_quarter;
    $cwsn_addl_grant = $exp['cwsn_addl_grant'] * $n_month * $cwsn_children_days;
    $cwsn_medical = $exp['cwsn_medical'] * $n_month * $cwsn_children_days;
    $staff_sal = $exp['staff_sal'] * $n_quarter;
    $cwsn_staff_sal = $exp['cwsn_staff_sal'] * $n_quarter;
    $total_sal = $staff_sal + $cwsn_staff_sal;
    $total_recurring = 	$maintanence_cost + 
                        $bedding_cost +
                        $cwsn_addl_grant + 
                        $cwsn_medical + 
                        $admin_cost + 
                        $cwsn_equip +
                        $total_sal +
                        $amnt_adjst;
    $amnt_released = $total_recurring > $dist_recommendation ? $dist_recommendation : $total_recurring;

    // Update database
    $query = "UPDATE `fund_release` SET `n_month` = ?, `children_days` = ?, `cwsn_children_days` = ?, `maintenance_cost` = ?, `bedding_cost` = ?, `admin_expenses` = ?, `cwsn_equip` = ?, `cwsn_addl_grant` = ?, `cwsn_medical` = ?, `staff_sal` = ?, `cwsn_staff_sal` = ?, `amnt_adjstmnt` = ?, `dist_recommendation` = ?, `amnt_released` = ? WHERE `cci_id` = ? AND `init_dt` = ?";
    $stmt = $mysqli->prepare($query);
    if (false === $stmt) {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        return false;
    }
    $stmt->bind_param('iiidddddddddddss', $n_month, $children_days, $cwsn_children_days,$maintenance_cost, $bedding_cost, $admin_expenses, $cwsn_equip, $cwsn_addl_grant, $cwsn_medical, $staff_sal, $cwsn_staff_sal, $amnt_adjst, $dist_recommendation, $amnt_released, $cci_id, $init_dt);
    $stmt->execute();