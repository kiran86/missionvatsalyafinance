<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

require_once("../config/Database.php");
$db = Database::getInstance();
$mysqli = $db->getConnection();

$data = $_GET['data'];
$fy_id = explode(',', $data)[0];
$init_dt = explode(',', $data)[1];

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
            `fund_release`.`remarks`
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
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport"
    />
    <link
      rel="icon"
      href="../assets/img/kaiadmin/favicon.ico"
      type="image/x-icon"
    />

    <!-- Fonts and icons -->
    <script src="../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Public Sans:300,400,500,600,700"] },
        custom: {
          families: [
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["../assets/css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins.min.css" />
    <link rel="stylesheet" href="../assets/css/kaiadmin.min.css" />
    <link href="https://cdn.datatables.net/v/bs5/jszip-3.10.1/dt-2.0.8/af-2.7.0/b-3.0.2/b-colvis-3.0.2/b-html5-3.0.2/b-print-3.0.2/cr-2.0.3/date-1.5.2/fc-5.0.1/fh-4.0.1/kt-2.12.1/r-3.0.2/rg-1.5.0/rr-1.5.0/sc-2.4.3/sb-1.7.1/sp-2.3.1/sl-2.0.3/sr-1.4.1/datatables.min.css" rel="stylesheet">
    <style>
        .scrollable-card {
            height: 100vh; /* Adjust height as needed */
            overflow-y: auto;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col-sm-6 mb-3 mb-sm-0">
        <div class="card border-dark scrollable-card">
            <div class="card-body">
            <form>
                <input type="hidden" name="fy-id" id="fy-id">
                <input type="hidden" name="cci-id" id="cci-id">
                <div class="row mb-3">
                    <label for="inputDistrict" class="col-sm-6 col-form-label">District</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputDistrict" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputCCI" class="col-sm-6 col-form-label">CCI</label>
                    <div class="col-sm-6">
                    <textarea rows="3" class="form-control" id="inputCCI" disabled></textarea>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputUnitNo" class="col-sm-6 col-form-label">Unit No</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputUnitNo" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputRunBy" class="col-sm-6 col-form-label">Run By</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputRunBy" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputNMonths" class="col-sm-6 col-form-label">No. of Months</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputNMonths">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputChildrenDaysPerMonth" class="col-sm-6 col-form-label">Children Days per Month</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputChildrenDaysPerMonth">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputCWSNDaysPerMonth" class="col-sm-6 col-form-label">CWSN Children Days per Month</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNDaysPerMonth">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputMaintenanceCost" class="col-sm-6 col-form-label">Maintenance and Others Cost</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputMaintenanceCost">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputBeddingCost" class="col-sm-6 col-form-label">Bedding Cost</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputBeddingCost">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputCWSNFund" class="col-sm-6 col-form-label">CWSN fund</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNFund">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputAdminCost" class="col-sm-6 col-form-label">Administrative cost</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputAdminCost">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputCWSNEquipCost" class="col-sm-6 col-form-label">CWSN Equipment cost</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNEquipCost">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputtotalSalary" class="col-sm-6 col-form-label">Total Salary</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtotalSalary">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputtotalRecurring" class="col-sm-6 col-form-label">Total (Recurring Cost)</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtotalRecurring">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputAmntAdjustment" class="col-sm-6 col-form-label">Amount Adjustment</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputAmntAdjustment">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputDistRecommendation" class="col-sm-6 col-form-label">District Recommendation</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputDistRecommendation">
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputFundReleased" class="col-sm-6 col-form-label">Fund to be released</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputFundReleased">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
            </div>
        </div>
        </div>
        <div class="col-sm-6">
        <div class="card border-dark scrollable-card">
            <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
        </div>
    </div>
</body>
</html>