<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

    include('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

    $data = $_POST['data'];
    $fy_id = explode(',', $data)[0];
    $init_dt = explode(',', $data)[1];
    $home_data = [];
	$saa_data = [];
	$os_data = [];
    $n_home = 0;
	$n_saa = 0;
	$n_os = 0;
	$districts = [];

    // Get Financial Year and Quarter
    $sql = "SELECT DISTINCT `fy`, `quarter`
            FROM `fy_quarter`
            WHERE `fy_id` = ?;";
    $stmt = $mysqli->prepare($sql);
    if ($stmt === FALSE) {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        die(E_USER_ERROR);
    }
    $stmt->bind_param('s', $fy_id);
    if ($stmt->execute()) {
        $rs = $stmt->get_result()->fetch_all(MYSQLI_NUM);
        $fy = $rs[0][0];
        $quarter = $rs[0][1];
    } else {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        die(E_USER_ERROR);
    }

    // Get expenditure data
    $sql = "SELECT 
                `cci`.`id`,
                `cci`.`district`,
                CONCAT(`cci`.`cci_name`, ' (', `cci`.`category`, ' for ', `cci`.`cci_gender`, ')'),
                `cci`.`category`,
                `cci`.`cci_unit_no`,
                `cci`.`cci_run_by`,
                `fund_release`.`n_months`, 
                `fund_release`.`children_days`, 
                `fund_release`.`cwsn_child_days`, 
                `fund_release`.`maintenance_cost`, 
                `fund_release`.`bedding_cost`, 
                `fund_release`.`cwsn_addl_grant`+`fund_release`.`cwsn_medical` AS 'CWSN Fund',
                `fund_release`.`admin_expenses`,
                `fund_release`.`cwsn_equip`,
                `fund_release`.`staff_sal`,
                `fund_release`.`cwsn_staff_sal`,
                `fund_release`.`staff_sal` + `fund_release`.`cwsn_staff_sal` AS 'Total Salary',
                `fund_release`.`maintenance_cost` + `fund_release`.`bedding_cost` + `fund_release`.`cwsn_addl_grant` + `fund_release`.`cwsn_medical` + `fund_release`.`admin_expenses` + `fund_release`.`cwsn_equip` + `fund_release`.`staff_sal` + `fund_release`.`cwsn_staff_sal` AS 'Total Recurring',
                `fund_release`.`amnt_adjstmnt`,
                `fund_release`.`dist_recommendation`,
                `fund_release`.`amnt_released`,
				`fund_release`.`remarks`,
				`fund_release`.`verified_by`
            FROM
                `fund_release`
            LEFT JOIN
                `cci`
            ON
                `fund_release`.`cci_id` = `cci`.`id`
            WHERE
                `fund_release`.`fy_id` = ? AND `fund_release`.`init_dt` = ?
            ORDER BY
                `cci`.`district`, `cci`.`cci_run_by`, `cci`.`cci_name`, `cci`.`category`, `cci`.`cci_unit_no`;";
    $stmt = $mysqli->prepare($sql);
    if ($stmt === FALSE) {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        return null;
    }
    $stmt->bind_param('ss', $fy_id, $init_dt);
    if ($stmt->execute()) {
        $expenditure = $stmt->get_result()->fetch_all(MYSQLI_NUM);
    } else {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        die(E_USER_ERROR);
    }

    foreach ($expenditure as $row) {
        // Collect unique districts
		if (array_search($row[0], $districts, true) === false) {
			array_push($districts, $row[1]);
		}

		//Populate each array element
		switch ($row[3]) {
			case 'Children Home':
			case 'Observation Home':
			case 'Special Home':
			case 'Place of Safety':
			case 'Children Home CWSN':
				$home_data[$n_home][0] = $fy_id;
				$home_data[$n_home][1] = $row[0];
				$home_data[$n_home][2] = $n_home + 1;
				$home_data[$n_home][3] = $row[1];
				$home_data[$n_home][4] = $row[2];
				$home_data[$n_home][5] = $row[4];
				$home_data[$n_home][6] = $row[5];
				$home_data[$n_home][7] = $row[6];
				$home_data[$n_home][8] = $row[7];
				$home_data[$n_home][9] = $row[8];
				// Maintenance cost
				$home_data[$n_home][10] = floatval($row[9]);
				// Bedding cost
				$home_data[$n_home][11] = floatval($row[10]);
				// CWSN fund
				$home_data[$n_home][12] = floatval($row[11]);
				// Admin cost
				$home_data[$n_home][13] = floatval($row[12]);
				// CWSN quip
				$home_data[$n_home][14] = floatval($row[13]);
				// Staff salary
				$home_data[$n_home][15] = floatval($row[14]);
				// CWSN staff salary
				$home_data[$n_home][16] = floatval($row[15]);
				// Total salary
				$home_data[$n_home][17] = floatval($row[16]);
				// Total recurring
				$home_data[$n_home][18] = floatval($row[17]);
                // Amount adjustment
				$home_data[$n_home][19] = floatval($row[18]);
                // District recommendation
                $home_data[$n_home][20] = floatval($row[19]);
                // Amount released
				$home_data[$n_home][21] = floatval($row[20]);
				// Init date
				$home_data[$n_home][22] = $init_dt;
				// Remarks
				$home_data[$n_home][23] = $row[21];
				// Verified by
				$home_data[$n_home][24] = $row[22];
				$n_home++;
                break;
            case 'Specialized Adoption Agency':
				$saa_data[$n_saa][0] = $fy_id;
				$saa_data[$n_saa][1] = $row[0];
				$saa_data[$n_saa][2] = $n_saa + 1;
				$saa_data[$n_saa][3] = $row[1];
				$saa_data[$n_saa][4] = $row[2];
				$saa_data[$n_saa][5] = $row[4];
				$saa_data[$n_saa][6] = $row[5];
				$saa_data[$n_saa][7] = $row[6];
				$saa_data[$n_saa][8] = $row[7];
				// Maintanence Cost
				$saa_data[$n_saa][9] = floatval($row[9]);
				// Admin cost
				$saa_data[$n_saa][10] = floatval($row[12]);
				// Staff salary
				$saa_data[$n_saa][11] = floatval($row[16]);
				$saa_data[$n_saa][12] = floatval($row[17]);
				$saa_data[$n_saa][13] = floatval($row[18]);
				$saa_data[$n_saa][14] = floatval($row[19]);
                $saa_data[$n_saa][15] = floatval($row[20]);
				// Init date
				$saa_data[$n_saa][16] = $init_dt;
				// Remarks
				$saa_data[$n_saa][17] = $row[21];
				// Verified by
				$saa_data[$n_saa][18] = $row[22];
				$n_saa++;
                break;
            case 'Open Shelter':
				$os_data[$n_os][0] = $fy_id;
				$os_data[$n_os][1] = $row[0];
				$os_data[$n_os][2] = $n_os + 1;
				$os_data[$n_os][3] = $row[1];
				$os_data[$n_os][4] = $row[2] . ' (' . $row[5] . ')';
				$os_data[$n_os][5] = $row[4];
				$os_data[$n_os][6] = $row[5];
				$os_data[$n_os][7] = $row[6];
				$os_data[$n_os][8] = $row[7];
				// Maintanance cost
				$os_data[$n_os][9] = floatval($row[9]);
				// Administrative cost
				$os_data[$n_os][10] = floatval($row[12]);
				// Staff salary
				$os_data[$n_os][11] = floatval($row[16]);
				$os_data[$n_os][12] = floatval($row[17]);
				$os_data[$n_os][13] = floatval($row[18]);
				$os_data[$n_os][14] = floatval($row[19]);
                $os_data[$n_os][15] = floatval($row[20]);
				// Init date
				$os_data[$n_os][16] = $init_dt;
				// Remarks
				$os_data[$n_os][17] = $row[21];
				// Verified by
				$os_data[$n_os][18] = $row[22];
				$n_os++;
                break;
		}
    }
    echo json_encode(Array('fyid' => $fy_id, 'quarter' => $quarter, 'districts' => $districts, 'homedata' => $home_data, 'saadata' => $saa_data, 'osdata' => $os_data));