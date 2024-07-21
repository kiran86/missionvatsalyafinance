<?php
require('../fpdf/fpdf.php');
require('../config/utilityfunc.php');
require_once('../config/Database.php');

session_start ();
if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}
$db = Database::getInstance();
$mysqli = $db->getConnection();

// Get post data
$fy_id = $_POST['fy-id'];
$approval_date = $_POST['approval-date'];

// Get Financial Year and Quarter
$sql = "SELECT DISTINCT `fy`, `quarter`
        FROM `fy_quarter`
        WHERE `fy_id` = ?;";
$stmt = $mysqli->prepare($sql);
if ($stmt === FALSE) {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    return null;
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

$sql = "SELECT 
            `cci`.`district`, CONCAT(`cci`.`cci_name`, ' (', `cci`.`category`, ' for ', `cci`.`cci_gender`, ')'), `cci`.`cci_unit_no`, `cci`.`cci_run_by`,
            `fund_release`.`n_months`, `fund_release`.`children_days`, `fund_release`.`cwsn_child_days`, `fund_release`.`maintenance_cost`, `fund_release`.`bedding_cost`, `fund_release`.`cwsn_addl_grant`+`fund_release`.`cwsn_medical` AS 'CWSN Fund', `fund_release`.`admin_expenses`, `fund_release`.`cwsn_equip`, `fund_release`.`staff_sal`, `fund_release`.`cwsn_staff_sal`, `fund_release`.`staff_sal` + `fund_release`.`cwsn_staff_sal` AS 'Total Salary', `fund_release`.`maintenance_cost` + `fund_release`.`bedding_cost` + `fund_release`.`cwsn_addl_grant` + `fund_release`.`cwsn_medical` + `fund_release`.`admin_expenses` + `fund_release`.`cwsn_equip` + `fund_release`.`staff_sal` + `fund_release`.`cwsn_staff_sal` AS 'Total Recurring', `fund_release`.`dist_recommendation`, `fund_release`.`amnt_released`
        FROM
            `fund_release`
        LEFT JOIN
            `cci`
        ON
            `fund_release`.`cci_id` = `cci`.`id`
        WHERE
            `fund_release`.`fy_id` = ? AND `fund_release`.`apprvl_dt` = ?
        ORDER BY
            `cci`.`district`, `cci`.`cci_run_by`, `cci`.`cci_name`, `cci`.`category`, `cci`.`cci_unit_no`;";
$stmt = $mysqli->prepare($sql);
if ($stmt === FALSE) {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    return null;
}
$stmt->bind_param('ss', $fy_id, $approval_date);
if ($stmt->execute()) {
    $data = $stmt->get_result()->fetch_all(MYSQLI_NUM);
} else {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    die(E_USER_ERROR);
}
// Define the header array
$header = array('#', 'CCI NAME', 'UNIT NO.', 'RUN BY', 'NO. OF MONTHS', 'CHILDREN DAYS PER MONTH', 'CWSN CHILDREN DAYS PER MONTH', 'MAINTENANCE AND OTHER COSTS', 'BEDDING COST', 'CWSN FUND', 'ADMINISTRATIVE COST', 'CWSN EQUIPMENT', 'SALARY OF STAFF', 'SALARY FOR CWSN STAFF', 'TOTAL SALARY', 'TOTAL (RECURRING COST)', 'DISTRICT RECOMMENDATION', 'FUND TO BE RELEASED');

// Create a new PDF document
$pdf = new FPDF('L', 'mm', 'A4'); // 'L' for Landscape, 'A4' for A4 size

// Define the width for each column
$widths =   array(6, 40, 10, 18, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15);

// Function to wrap text in cells
function wrapCell($pdf, $width, $height, $text)
{
    $fmt = new NumberFormatter('en_IN', NumberFormatter::DECIMAL);
    $fmt->setAttribute(NumberFormatter::MIN_FRACTION_DIGITS, 2);
    $fmt->setAttribute(NumberFormatter::MAX_FRACTION_DIGITS, 2);

    if (is_double($text)) {
        $text = $fmt->format(floatval($text));
        $align = 'R';
    } else if (is_numeric($text)) {
        $align = 'R';
    } else {
        $align = 'L';
    }
    
    $pdf->MultiCell($width, $height, $text, 0, $align, false);
}

// Function to calculate the height of the largest cell in a row
function getMaxHeight($pdf, $widths, $texts)
{
    $maxHeight = 0;
    foreach ($texts as $key => $text) {
        $numLines = $pdf->GetStringWidth($text) / ($widths[$key] - 2);
        $numLines = ceil($numLines);
        $cellHeight = $numLines * 6; // Assuming line height of 6
        if ($cellHeight > $maxHeight) {
            $maxHeight = $cellHeight;
        }
    }
    return $maxHeight;
}

// Draw row with correct borders
function drawRow($pdf, $widths, $texts, $height)
{
    $yStart = $pdf->GetY();
    foreach ($texts as $key => $text) {
        $x = $pdf->GetX();
        $y = $pdf->GetY();
        $pdf->Rect($x, $y, $widths[$key], $height); // Draw the border
        wrapCell($pdf, $widths[$key], 4, $text);
        $pdf->SetXY($x + $widths[$key], $y);
    }
    $pdf->Ln($height); // Move to the next line after drawing the row
}

$district = '';
$new_dist_flag = false;
$sl_no = 0;
// Output the data rows
foreach ($data as $row) {
    // Check if a new district is listing
    if ($district != $row[0]) {
        $district = $row[0];
        $new_dist_flag = true;
        $sl_no = 0;
    }
    
    if ($new_dist_flag || $sl_no % 5 == 0) {
        // Add a new page
        $pdf->AddPage();
        // Set the font for the header
        $pdf->SetFont('Arial', 'B', 10);
        // Add title row
        $pdf->Cell(290, 7, 'RELEASE OF FUND AS CENTRAL SHARE & STATE SHARE UNDER MISSION VATSALYA FOR THE PERIOD ' . $quarter . ' IN RESPECT OF CCIs', 0, 2, 'C', false);
        // Add the header row with wrapped text
        $maxHeight = getMaxHeight($pdf, $widths, $header);
        drawRow($pdf, $widths, $header, $maxHeight);

        // If new district, then add district row
        if ($new_dist_flag) {
            $new_dist_flag = false;
            // Add another row with district
            $h_row = array('', $district, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
            $maxHeight = getMaxHeight($pdf, $widths, $h_row);
            drawRow($pdf, $widths, $h_row, $maxHeight);
        }
    }

    // Set the font for the data rows
    $pdf->SetFont('Arial', '', 8);

    // remove district column and add sl no
    $row[0] = ++$sl_no;
    $maxHeight = getMaxHeight($pdf, $widths, $row);
    drawRow($pdf, $widths, $row, $maxHeight);
}

$filename = date_format(date_create($approval_date), 'Ymd') . '_' . $fy_id . '.pdf';

/// Set headers to force download
header('Content-Type: application/pdf');
header('Content-Disposition: attachment; filename="' . $filename . '"');
header('Cache-Control: private, max-age=0, must-revalidate');
header('Pragma: public');

// Output the PDF to the browser and Download
$pdf->Output('D', $filename);
?>
