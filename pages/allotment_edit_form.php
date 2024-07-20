<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

if ( php_uname('s') != 'Darwin') {
  $fmt = new NumberFormatter('en_IN', NumberFormatter::DECIMAL);
  $fmt->setAttribute(NumberFormatter::MIN_FRACTION_DIGITS, 2);
}

require_once("../config/Database.php");
$db = Database::getInstance();
$mysqli = $db->getConnection();

$data = $_GET['data'];
$fy_id = explode(',', $data)[0];
$cci_id = explode(',', $data)[1];
$init_dt = explode(',', $data)[2];
// print_r($fy_id);
// Get expenditure data
$sql = "SELECT
            `cci`.`district`,
            CONCAT(`cci`.`cci_name`, ' (', `cci`.`category`, ' for ', `cci`.`cci_gender`, ')') AS 'cci',
            `cci`.`cci_unit_no`,
            `cci`.`cci_run_by`,
            `cci`.`category` IN (SELECT DISTINCT `cci`.`category` FROM `cci` WHERE `cci`.`category` LIKE '%home%') AS 'is_home',
            `fund_release`.*,
            `fund_release`.`cwsn_addl_grant`+`fund_release`.`cwsn_medical` AS 'cwsn_fund',
            `fund_release`.`staff_sal` + `fund_release`.`cwsn_staff_sal` AS 't_salary',
            `fund_release`.`maintenance_cost` + `fund_release`.`bedding_cost` + `fund_release`.`cwsn_addl_grant` + `fund_release`.`cwsn_medical` + `fund_release`.`admin_expenses` + `fund_release`.`cwsn_equip` + `fund_release`.`staff_sal` + `fund_release`.`cwsn_staff_sal` AS 't_recurring'
        FROM
            `fund_release`
        LEFT JOIN
            `cci`
        ON
            `fund_release`.`cci_id` = `cci`.`id`
        WHERE
            `fund_release`.`cci_id` = ? AND `fund_release`.`init_dt` = ?
        ORDER BY
            `cci`.`district`, `cci`.`cci_run_by`, `cci`.`cci_name`, `cci`.`category`, `cci`.`cci_unit_no`;";
$stmt = $mysqli->prepare($sql);
if ($stmt === FALSE) {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    return null;
}
$stmt->bind_param('ss', $cci_id, $init_dt);
if ($stmt->execute()) {
    $expenditure = $stmt->get_result()->fetch_all(MYSQLI_ASSOC)[0];
    $district = $expenditure['district'];
    $filename = date_format(date_create($init_dt), 'Ymd') . '_' . str_replace(' ', '_', $district) . '_' . $fy_id . '.pdf';
} else {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    die(E_USER_ERROR);
}
// If the file doesn't lies with the user, exit
if ($_SESSION['login'] != $expenditure['at_user']) {
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
            height: 90vh; /* Adjust height as needed */
            overflow-y: auto;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col-sm-6 mb-3 mb-sm-0">
        <div class="card border-dark scrollable-card">
            <div class="card-body">
                <input type="hidden" name="cci-id" id="cci-id" value="<?php echo $cci_id ?>">
                <input type="hidden" name="init-dt" id="init-dt" value="<?php echo $init_dt ?>">
                <div class="row mb-3">
                    <label for="inputDistrict" class="col-sm-6 col-form-label">District</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputDistrict" value="<?php echo $expenditure['district'] ?>" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputCCI" class="col-sm-6 col-form-label">CCI</label>
                    <div class="col-sm-6">
                    <textarea rows="3" class="form-control" id="inputCCI" readonly><?php echo $expenditure['cci'] ?></textarea>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputUnitNo" class="col-sm-6 col-form-label">Unit No</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputUnitNo" value="<?php echo $expenditure['cci_unit_no'] ?>" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputRunBy" class="col-sm-6 col-form-label">Run By</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputRunBy" value="<?php echo $expenditure['cci_run_by'] ?>" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputNMonths" class="col-sm-6 col-form-label">No. of Months</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputNMonths" value="<?php echo $expenditure['n_months'];?>" <?php if ($_SESSION['login'] == $expenditure['at_user'] && $_SESSION['login'] != 1) echo "readonly"; ?>>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputChildrenDaysPerMonth" class="col-sm-6 col-form-label">Children Days per Month</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputChildrenDaysPerMonth" value="<?php echo $expenditure['children_days'] ?>" <?php if ($_SESSION['login'] == $expenditure['at_user'] && $_SESSION['login'] != 1) echo "readonly"; ?>>
                    </div>
                </div>
                <?php if ($expenditure['is_home']) { ?>
                <div class="row mb-3">
                <label for="inputCWSNDaysPerMonth" class="col-sm-6 col-form-label">CWSN Children Days per Month</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNDaysPerMonth" value="<?php echo $expenditure['cwsn_child_days'] ?>" <?php if ($_SESSION['login'] != 1) {echo "readonly";} ?>>
                    </div>
                </div>
                <?php } ?>
                <div class="row mb-3">
                <label for="inputMaintenanceCost" class="col-sm-6 col-form-label">Maintenance and Others Cost</label>
                    <div class="input-group col">
                    <span class="input-group-text col-sm-1">₹</span>
                    <input type="text" class="form-control text-end col-sm-5" id="inputMaintenanceCost" value="<?php echo $fmt->format($expenditure['maintenance_cost']) ?>" readonly>
                    </div>
                </div>
                <?php if ($expenditure['is_home']) { ?>
                <div class="row mb-3">
                <label for="inputBeddingCost" class="col-sm-6 col-form-label">Bedding Cost</label>
                    <div class="input-group col">
                    <span class="input-group-text col-sm-1">₹</span>
                    <input type="text" class="form-control text-end col-sm-5" id="inputBeddingCost" value="<?php echo $fmt->format($expenditure['bedding_cost']) ?>" readonly>
                    </div>
                </div>
                <?php } ?>
                <div class="row mb-3">
                <label for="inputAdminCost" class="col-sm-6 col-form-label">Administrative cost</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputAdminCost"  value="<?php echo $expenditure['admin_expenses'] ?>" disabled>
                    </div>
                </div>
                <?php if ($expenditure['is_home']) { ?>
                <div class="row mb-3">
                <label for="inputCWSNEquipCost" class="col-sm-6 col-form-label">CWSN Equipment cost</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNEquipCost" value="<?php echo $expenditure['cwsn_equip'] ?>" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputCWSNAddlCost" class="col-sm-6 col-form-label">CWSN Additional Grant</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNAddlCost" value="<?php echo $expenditure['cwsn_addl_grant'] ?>" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputCWSNMedical" class="col-sm-6 col-form-label">CWSN Medical Grant</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputCWSNMedical" value="<?php echo $expenditure['cwsn_medical'] ?>" disabled>
                    </div>
                </div>
                <?php } ?>
                <div class="row mb-3">
                <label for="inputtotalSalary" class="col-sm-6 col-form-label">Staff Salary</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtotalSalary" value="<?php echo $expenditure['staff_sal'] ?>" disabled>
                    </div>
                </div>
                <?php if ($expenditure['is_home']) { ?>
                <div class="row mb-3">
                <label for="inputtotalSalary" class="col-sm-6 col-form-label">CWSN Staff Salary</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtotalSalary" value="<?php echo $expenditure['cwsn_staff_sal'] ?>" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputtotalSalary" class="col-sm-6 col-form-label">Total Salary</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtotalSalary" value="<?php echo $expenditure['t_salary'] ?>" disabled>
                    </div>
                </div>
                <?php } ?>
                <div class="row mb-3">
                <label for="inputtotalRecurring" class="col-sm-6 col-form-label">Total (Recurring Cost)</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtotalRecurring" value="<?php echo $expenditure['t_recurring'] ?>" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputAmntAdjustment" class="col-sm-6 col-form-label">Amount Adjustment</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputAmntAdjustment" value="<?php echo $expenditure['amnt_adjstmnt'] ?>" <?php if ($_SESSION['login'] != 1) echo "readonly"; ?>>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputDistRecommendation" class="col-sm-6 col-form-label">District Recommendation</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputDistRecommendation" value="<?php echo $expenditure['dist_recommendation'] ?>" <?php if ($_SESSION['login'] != 1) echo "readonly"; ?>>
                    </div>
                </div>
                <div class="row mb-3">
                <label for="inputFundReleased" class="col-sm-6 col-form-label">Fund to be released</label>
                    <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputFundReleased" value="<?php echo $expenditure["amnt_released"] ?>" disabled>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputRemarks" class="col-sm-6 col-form-label">Remarks</label>
                    <div class="col-sm-6">
                    <textarea rows="3" class="form-control" id="inputRemarks"><?php echo $expenditure['remarks'] ?></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
            </div>
        </div>
        </div>
        <div class="col-sm-6">
        <div class="card border-dark scrollable-card">
            <div class="card-body">
            <?php
                if (isset($filename)) {
                    echo '<iframe src="../recommendations/' . $filename . '" width="100%" height="100%"></iframe>';
                }
            ?>
            </div>
        </div>
        </div>
    </div>
</body>
</html>