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
    $n_quarter = ($expenditure['n_months'] / 3) + ($expenditure['n_months'] % 3 > 0 ? 1 : 0);
    $filename = date_format(date_create($init_dt), 'Ymd') . '_' . str_replace(' ', '_', $district) . '_' . $fy_id . '.pdf';
} else {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    die(E_USER_ERROR);
}
// If the file doesn't lies with the user, exit
if ($_SESSION['login'] != $expenditure['at_user']) {
    die(E_USER_ERROR);
}

// Fetch expense structure for this cci
$exp = [];
$sql = "SELECT `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal` FROM `cci_recurring_exp` WHERE `id` = '". $cci_id. "'";
$rs= $mysqli->query($sql);
while ($r = $rs->fetch_array()) {
    $exp = $r;
}
$rs->close();
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
        <form id="fExpenditure" action="update_allotment.php" method="post">
            <div class="card border-dark scrollable-card">
                <div class="card-body">
                    <input type="hidden" class="form-control" name="cci-id" id="cci-id" value="<?php echo $cci_id ?>">
                    <input type="hidden" class="form-control" name="init-dt" id="init-dt" value="<?php echo $init_dt ?>">
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
                        <input type="text" class="form-control" id="inputNMonths" name="inputNMonths" value="<?php echo intval($expenditure['n_months']);?>" <?php if ($_SESSION['login'] != 1) echo "readonly"; ?>>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputChildrenDaysPerMonth" class="col-sm-6 col-form-label">Children Days per Month</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" id="inputChildrenDaysPerMonth" name="inputChildrenDaysPerMonth" value="<?php echo $expenditure['children_days'] ?>" <?php if ($_SESSION['login'] == $expenditure['at_user'] && $_SESSION['login'] != 1) echo "readonly"; ?>>
                        </div>
                    </div>
                    <?php if ($expenditure['is_home']) { ?>
                    <div class="row mb-3">
                    <label for="inputCWSNDaysPerMonth" class="col-sm-6 col-form-label">CWSN Children Days per Month</label>
                        <div class="col-sm-6">
                        <input type="text" class="form-control" id="inputCWSNDaysPerMonth" name="inputCWSNDaysPerMonth" value="<?php echo $expenditure['cwsn_child_days'] ?>" <?php if ($_SESSION['login'] != 1) {echo "readonly";} ?>>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="row mb-3">
                    <label for="inputMaintenanceCost" class="col-sm-4 col-form-label">Maintenance and Others Cost</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitMaintenanceCost" value="<?php echo $fmt->format($exp['maintenance_cost']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="<?php echo $expenditure['children_days']; ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nMonths" id="" value="<?php echo $expenditure['n_months']; ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-3" id="inputMaintenanceCost" value="<?php echo $fmt->format($expenditure['maintenance_cost']);?>" readonly>
                        </div>
                    </div>
                    <?php if ($expenditure['is_home']) { ?>
                    <div class="row mb-3">
                    <label for="inputBeddingCost" class="col-sm-4 col-form-label">Bedding Cost</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitBeddingCost" value="<?php echo $fmt->format($exp['bedding_cost']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="<?php echo $expenditure['children_days']; ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nQuarter" id="" value="<?php echo $n_quarter ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-5" id="inputBeddingCost" value="<?php echo $fmt->format($expenditure['bedding_cost']); ?>" readonly>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="row mb-3">
                    <label for="inputAdminCost" class="col-sm-4 col-form-label">Administrative cost</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitAdminCost" value="<?php echo $fmt->format($exp['admin_expenses']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="--" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nQuarter" id="" value="<?php echo $n_quarter ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputAdminCost"  value="<?php echo $fmt->format($expenditure['admin_expenses']); ?>" disabled>
                        </div>
                    </div>
                    <?php if ($expenditure['is_home']) { ?>
                    <div class="row mb-3">
                    <label for="inputCWSNEquipCost" class="col-sm-4 col-form-label">CWSN Equipment cost</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitCWSNEquipCost" value="<?php echo $fmt->format($exp['cwsn_equip']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="--" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nQuarter" id="" value="<?php echo $n_quarter ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputCWSNEquipCost" value="<?php echo $fmt->format($expenditure['cwsn_equip']); ?>" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputCWSNAddlCost" class="col-sm-4 col-form-label">CWSN Additional Grant</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitCWSNAddlCost" value="<?php echo $fmt->format($exp['cwsn_addl_grant']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="<?php echo $expenditure['cwsn_child_days']; ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nMonths" id="" value="<?php echo $expenditure['n_months']; ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputCWSNAddlCost" value="<?php echo $fmt->format($expenditure['cwsn_addl_grant']); ?>" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputCWSNMedical" class="col-sm-4 col-form-label">CWSN Medical Grant</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitCWSNMedical" value="<?php echo $fmt->format($exp['cwsn_medical']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="<?php echo $expenditure['cwsn_child_days']; ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nMonths" id="" value="<?php echo $expenditure['n_months']; ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputCWSNMedical" value="<?php echo $fmt->format($expenditure['cwsn_medical']); ?>" disabled>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="row mb-3">
                    <label for="inputStaffSalary" class="col-sm-4 col-form-label">Staff Salary</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitStaffSalary" value="<?php echo $fmt->format($exp['staff_sal']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="<?php echo '--'; ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nMonths" id="" value="<?php echo $expenditure['n_months']; ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputStaffSalary" value="<?php echo $fmt->format($expenditure['staff_sal']); ?>" disabled>
                        </div>
                    </div>
                    <?php if ($expenditure['is_home']) { ?>
                    <div class="row mb-3">
                    <label for="inputCWSNStaffSalary" class="col-sm-4 col-form-label">CWSN Staff Salary</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end col-sm-2" id="unitCWSNStaffSalary" value="<?php echo $fmt->format($exp['cwsn_staff_sal']); ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1" id="" value="<?php echo '--'; ?>" readonly>
                        <span class="input-group-text">x</span>
                        <input type="text" class="form-control text-end col-sm-1 nMonths" id="" value="<?php echo $expenditure['n_months']; ?>" readonly>
                        <span class="input-group-text">=</span>
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputCWSNStaffSalary" value="<?php echo $fmt->format($expenditure['cwsn_staff_sal']); ?>" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputtotalSalary" class="col-sm-6 col-form-label">Total Salary</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputtotalSalary" value="<?php echo $fmt->format($expenditure['t_salary']); ?>" disabled>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="row mb-3">
                    <label for="inputtotalRecurring" class="col-sm-6 col-form-label">Total (Recurring Cost)</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputtotalRecurring" value="<?php echo $fmt->format($expenditure['t_recurring']); ?>" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputAmntAdjustment" class="col-sm-6 col-form-label">Amount Adjustment</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputAmntAdjustment" name="inputAmntAdjustment" value="<?php echo $fmt->format($expenditure['amnt_adjstmnt']); ?>" <?php if ($_SESSION['login'] != 1) echo "readonly"; ?>>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputDistRecommendation" class="col-sm-6 col-form-label">District Recommendation</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputDistRecommendation" name="inputDistRecommendation" value="<?php echo $fmt->format($expenditure['dist_recommendation']); ?>" <?php if ($_SESSION['login'] != 1) echo "readonly"; ?>>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="inputFundReleased" class="col-sm-6 col-form-label">Fund to be released</label>
                        <div class="input-group col">
                        <span class="input-group-text">₹</span>
                        <input type="text" class="form-control text-end" id="inputFundReleased" value="<?php echo $fmt->format($expenditure["amnt_released"]); ?>" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputRemarks" class="col-sm-6 col-form-label">Remarks</label>
                        <div class="input-group col">
                        <textarea rows="3" class="form-control" id="inputRemarks" name="inputRemarks" <?php if ($_SESSION['login'] == 1) echo "disabled"; ?>><?php echo $expenditure['remarks'] ?></textarea>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button id="bSubmitExpenditure" type="submit" class="btn btn-primary" disabled>Save</button>
                </div>
            </div>
        </form>
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

    <script>
        // Enable submit button if input changed
        $(document).ready(function() {
            $('#fExpenditure')
                .each(function () {
                    $(this).data('serialized', $(this).serialize())
                })
                .on('change input', function () {
                    $(this)
                        .find('input:submit, button:submit')
                            .prop('disabled', $(this).data('serialized') == $(this).serialize());
                })
                .find('input:submit, button:submit')
                    .prop('disabled', true);

            
            // Restrict input to integers
            setInputFilter(document.getElementById('inputNMonths'), function(value) {
                return /^\d*$/.test(value)
            }, "Invalid input! Only numbers are allowed.");
            setInputFilter(document.getElementById('inputChildrenDaysPerMonth'), function(value) {
                return /^\d*$/.test(value)
            }, "Invalid input! Only numbers are allowed.");
            setInputFilter(document.getElementById('inputCWSNDaysPerMonth'), function(value) {
                return /^\d*$/.test(value)
            }, "Invalid input! Only numbers are allowed.");
            // Restricts input to numbers
            setInputFilter(document.getElementById('inputAmntAdjustment'), function(value) {
                return /^\d*\.?\d*$/.test(value);
            }, "Invalid input! Only numbers are allowed.");
            setInputFilter(document.getElementById('inputDistRecommendation'), function(value) {
                return /^\d*\.?\d*$/.test(value);
            }, "Invalid input! Only numbers are allowed.");

            // Recalculate expenditures on change of input
            $('#inputNMonths, #inputChildrenDaysPerMonth, #inputCWSNDaysPerMonth').change(function() {
                recalculateEstimate();
            });

            // Recalculate the estimated value on change of input
            $('#inputAmntAdjustment, #inputDistRecommendation').change(function() {
                recalculateEstimate();
            });

            // Submit the form
            // $('#bSubmitExpenditure').click(function(e) {
            //     e.preventDefault();
            //     var formData = new FormData(document.

        });
        // Restricts input for the given textbox to the given inputFilter function.
        function setInputFilter(textbox, inputFilter, errMsg) {
        [ "input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop", "focusout" ].forEach(function(event) {
            textbox.addEventListener(event, function(e) {
            if (inputFilter(this.value)) {
                // Accepted value.
                if ([ "keydown", "mousedown", "focusout" ].indexOf(e.type) >= 0){
                this.classList.remove("input-error");
                this.setCustomValidity("");
                }

                this.oldValue = this.value;
                this.oldSelectionStart = this.selectionStart;
                this.oldSelectionEnd = this.selectionEnd;
            }
            else if (this.hasOwnProperty("oldValue")) {
                // Rejected value: restore the previous one.
                this.classList.add("input-error");
                this.setCustomValidity(errMsg);
                this.reportValidity();
                this.value = this.oldValue;
                this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
            }
            else {
                // Rejected value: nothing to restore.
                this.value = "";
            }
            });
        });
        }

        // Recalculate the estimated value on change of inputs
        function recalculateEstimate() {
            var nMonths = parseInt(document.getElementById('inputNMonths').value);
            var nQuarter = Math.ceil(nMonths / 3);
            var childrenDaysPerMonth = parseInt(document.getElementById('inputChildrenDaysPerMonth').value);
            var cwsnDaysPerMonth = parseInt(document.getElementById('inputCWSNDaysPerMonth').value);
            var amntAdjustment = parseFloat(document.getElementById('inputAmntAdjustment').value.replace(/,/g,''));
            var distRecommendation = parseFloat(document.getElementById('inputDistRecommendation').value.replace(/,/g,''));
            
            var maintenance_cost = parseFloat(document.getElementById('unitMaintenanceCost').value.replace(/,/g,''));
            var bedding_cost = parseFloat(document.getElementById('unitBeddingCost').value.replace(/,/g,''));
            var admin_expenses = parseFloat(document.getElementById('unitAdminCost').value.replace(/,/g,''));
            var cwsn_equip = parseFloat(document.getElementById('unitCWSNEquipCost').value.replace(/,/g,''));
            var cwsn_addl_grant = parseFloat(document.getElementById('unitCWSNAddlCost').value.replace(/,/g,''));
            var cwsn_medical = parseFloat(document.getElementById('unitCWSNMedical').value.replace(/,/g,''));
            var staff_sal = parseFloat(document.getElementById('unitStaffSalary').value.replace(/,/g,''));
            var cwsn_staff_sal = parseFloat(document.getElementById('unitCWSNStaffSalary').value.replace(/,/g,''));

            $('.nMonths').val(nMonths);
            $('.nQuarter').val(nQuarter);
            document.getElementById('inputMaintenanceCost').value = maintenance_cost * childrenDaysPerMonth * nMonths;
        }
    </script>
</body>
</html>