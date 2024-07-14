<?php
require('../fpdf/fpdf.php');

session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

require_once('../config/Database.php');

class PDF extends FPDF
{
    // Load data from database
    function LoadData($fy_qtr, $approval_date)
    {
        $db = Database::getInstance();
        $mysqli = $db->getConnection();
        $sql = "SELECT 
                    `cci`.`district`, CONCAT(`cci`.`cci_name`, ' (', `cci`.`category`, ' for ', `cci`.`cci_gender`, ')'), `cci`.`cci_unit_no`, `cci`.`cci_run_by`,
                    `fy_quarter`.`fy`, `fy_quarter`.`quarter`,
                    `fund_release`.`n_months`, `fund_release`.`children_days`, `fund_release`.`cwsn_child_days`, `fund_release`.`maintenance_cost`, `fund_release`.`bedding_cost`, `fund_release`.`admin_expenses`, `fund_release`.`cwsn_equip`, `fund_release`.`cwsn_addl_grant`, `fund_release`.`cwsn_medical`, `fund_release`.`staff_sal`, `fund_release`.`cwsn_staff_sal`, `fund_release`.`dist_recommendation`, `fund_release`.`amnt_released`
                FROM
                    `fund_release`
                LEFT JOIN
                    `cci`
                ON
                    `fund_release`.`cci_id` = `cci`.`id`
                LEFT JOIN
                    `fy_quarter`
                ON
                    `fund_release`.`fy_id` = `fy_quarter`.`fy_id`
                WHERE
                    `fund_release`.`fy_id` = ? AND `fund_release`.`apprvl_dt` = ?
                ORDER BY
                    `cci`.`district`, `cci`.`cci_run_by`, `cci`.`cci_name`, `cci`.`category`, `cci`.`cci_unit_no`;";
        $stmt = $mysqli->prepare($sql);
        if ($stmt === FALSE) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return null;
        }
        $stmt->bind_param('ss', $fy_qtr, $approval_date);
        if ($stmt->execute()) {
            $data = $stmt->get_result()->fetch_all(MYSQLI_NUM);
        } else {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return null;
        }
        return $data;
    }

//     /**
//     * MultiCell with alignment as in Cell.
//     * @param float $w
//     * @param float $h
//     * @param string $text
//     * @param mixed $border
//     * @param int $ln
//     * @param string $align
//     * @param boolean $fill
//     */
//     private function MultiAlignCell($w,$h,$max_h,$text,$border=0,$ln=0,$align='L',$fill=false)
//     {
//         // Store reset values for (x,y) positions
//         $x = $this->GetX() + $w;
//         $y = $this->GetY();

//         // Make a call to FPDF's MultiCell
//         $this->MultiCell($w,$h,$text,$border,$align,$fill);

//         // Fill height with blank cells
//         $y_now = $this->GetY();error_log($y . ', ' . $y_now);
//         for ($i = $y_now; $i < ($y + $max_h); $i = $i + $h) {
//             $this->Cell($w, $h, '', 'LR', 2, $align, $fill);
//         }

//         // Reset the line position to the right, like in Cell
//         if( $ln==0 )
//         {
//             $this->SetXY($x,$y);
//         }
//     }

//     // Colored table
//     function FancyTable($header, $data)
//     {
//         // $this->SetSubject('RELEASE OF FUND AS CENTRAL SHARE & STATE SHARE UNDER MISSION VATSALYA FOR THE PERIOD ' . $data[6] . ' IN RESPECT OF CCIs FOR THE FINANCIAL YEAR ' . $data[5]);
//         // Colors, line width and bold font
//         $this->SetFillColor(0,0,255);
//         $this->SetTextColor(0);
//         // $this->SetDrawColor(128,0,0);
//         $this->SetLineWidth(1);
//         $this->SetFont('Arial','B', 12);
//         // Header
//         $w = array(15, 30, 20, 25, 25, 25, 45, 45, 40, 30, 25, 35, 30, 30, 35, 30, 50, 50, 50);
//         for($i=0;$i<count($header);$i++) {
//             // Save the current position
//             $x = $this->GetX();
//             $y = $this->GetY();
//             // $this->MultiAlignCell($w[$i],5,35,$header[$i],'LRT',0,'C',false);
//             $this->MultiCell($w[$i], 5, $header[$i], 1, 'C',false);
//             // Move to the right to the beginning of the next cell
//             $this->SetXY($x + $w[$i], $y);
//         }
//         $this->Ln();
//         // Color and font restoration
//         $this->SetFillColor(224,235,255);
//         $this->SetTextColor(0);
//         $this->SetFont('');
//         // Data
//         $fill = false;
//         $n_row = 0;
//         foreach($data as $row)
//         {break;
//             $this->Cell($w[0],6,++$n_row,'LR',0,'L',$fill);
//             $this->Cell($w[1],6,$row[0],'LR',0,'L',$fill);
//             $this->Cell($w[2],6,$row[1],'LR',0,'L',$fill);
//             $this->Cell($w[3],6,$row[2],'LR',0,'R',$fill);
//             $this->Cell($w[4],6,$row[3],'LR',0,'L',$fill);
//             $this->Cell($w[5],6,$row[4],'LR',0,'L',$fill);
//             $this->Cell($w[6],6,$row[7],'LR',0,'R',$fill);
//             $this->Cell($w[7],6,$row[8],'LR',0,'R',$fill);
//             $this->Cell($w[8],6,$row[9],'LR',0,'R',$fill);
//             $this->Cell($w[9],6,number_format($row[10]),'LR',0,'R',$fill);
//             $this->Cell($w[10],6,number_format($row[11]),'LR',0,'R',$fill);
//             $this->Cell($w[11],6,number_format($row[12]),'LR',0,'R',$fill);
//             $this->Cell($w[12],6,number_format($row[13]),'LR',0,'R',$fill);
//             $this->Cell($w[13],6,number_format($row[14]),'LR',0,'R',$fill);
//             $this->Cell($w[14],6,number_format($row[15]),'LR',0,'R',$fill);
//             $this->Cell($w[15],6,number_format($row[16]),'LR',0,'R',$fill);
//             $this->Cell($w[16],6,number_format($row[17]),'LR',0,'R',$fill);
//             $this->Cell($w[17],6,number_format($row[18]),'LR',0,'R',$fill);
//             $this->Cell($w[18],6,number_format($row[19]),'LR',0,'R',$fill);
//             $this->Ln();
//             $fill = !$fill;
//         }
//         // Closing line
//         $this->Cell(array_sum($w),0,'','T');
//     }
    
}

$pdf = new PDF('L', 'mm', 'A4');
// Column headings
$header = array('SL. NO', 'CCI NAME', 'UNIT NO.', 'CCI RUN BY', 'CCI CATEGORY', 'NO. OF MONTHS', 'AVERAGE NO OF CHILDREN DAYS PER MONTH', 'AVERAGE NO OF CWSN CHILDREN DAYS PER MONTH', 'MAINTENANCE AND OTHERS COST', 'BEDDING COST', 'CWSN FUND', 'ADMINISTRATIVE COST', 'CWSN EQUIPMENT', 'SALARY OF STAFF', 'SALARY FOR CWSN STAFF', 'TOTAL SALARY', 'TOTAL (RECURRING COST)', 'DISTRICT RECOMMENDATION', 'FUND TO BE RELEASED');
// Data loading
$data = $pdf->LoadData($_POST['fy-qtr'], $_POST['approval-date']);
$pdf->SetFont('Arial','',8);
$pdf->AddPage();
$pdf->FancyTable($header,$data);
$pdf->Output('F', '../output/' . $_POST['fy-qtr'] . '.pdf');
// $pdf->Output();
?>