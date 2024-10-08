<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

if ( php_uname('s') != 'Darwin') {
  $fmt = new NumberFormatter('en_IN', NumberFormatter::CURRENCY);
}

include('../config/DbFunction.php');
include('../config/utilityfunc.php');

$obj = new DbFunction();
$arr = $obj->get_allotment();
$user = $obj->get_user($_SESSION['login']);
?> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mission Vatsalya Fund Management : Sub-allotment Status</title>
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
</head>

<body>
    <div class="wrapper">
        <?php include('sidebar.php');?>
        <div class="main-panel">
            <div class="main-header">
              <?php include('header.php');?>
            </div>
            <div class="container">
              <div class="page-inner">
                <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4">
                  <div>
                    <h3 class="fw-bold mb-3">Sub-allotment Status</h3>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="card card-round">
                      <div class="card-header">
                        <div class="card-head-row">
                          <div class="card-title">History</div>
                        </div>
                      </div>
                      <div class="card-body p-0">
                        <div class="table-responsive">
                          <!-- Projects table -->
                          <table class="table mb-0 table-bordered">
                            <thead class="thead-dark align-items-center">
                              <tr>
                                <th scope="col" class="text-center">Financial Year</th>
                                <th scope="col" class="text-center">Quarter</th>
                                <th scope="col" class="text-center col-3">Districts</th>
                                <th scope="col" class="text-center">Total Amount</th>
                                <th scope="col" class="text-center">Status</th>
                                <th scope="col" class="text-center">Initiation Date</th>
                                <th scope="col" class="text-center">@</th>
                                <th scope="col" class="text-center">Approval Date</th>
                                <th scope="col" class="text-center" colspan="2">Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                              <?php foreach ($arr as $row) { ?>
                                <!-- Financial Year -->
                                <td class="text-center"><?php echo $row[1]; ?></td>
                                <!-- Quarter -->
                                <td class="text-center"><?php echo $row[2]; ?></td>
                                
                                <!-- Districts -->
                                <?php if ($row[6] == NULL) { ?>
                                <td class="text-center"></td>
                                <?php } else {?>
                                <td class="text-start"><?php echo $row[6];?></td>
                                <?php }?>

                                <!-- Total Amount -->
                                <?php if ($row[7] == NULL) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-end"><?php echo isset($fmt) ? $fmt->format($row[7]) : $row[7];?></td>
                                <?php }?>

                                <!-- Status -->
                                <?php if ($row[8] == NULL) { ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-danger">Not Initiated</span></td>
                                <?php } else if ($row[9] == NULL){ ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-warning">Pending</span></td>
                                <?php } else if ($row[10] == NULL) { ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-success">Approved</span></td>
                                <?php } else { ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-success">Finalized</span></td>
                                <?php }?>

                                <!-- Initiation Date -->
                                <?php if ($row[8] == NULL) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-center"><?php echo date_format(date_create($row[8]), 'd/m/Y');?></td>
                                <?php }?>

                                <!-- at user -->
                                <?php if ($row[4] == NULL) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-center"><?php echo $row[4];?></td>
                                <?php }?>

                                <!-- Approval Date -->
                                <?php if ($row[9] == NULL) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-center"><?php echo date_format(date_create($row[9]), 'd/m/Y');?></td>
                                <?php }?>

                                <!-- Actions -->
                                <!-- View and Edit Table Button-->
                                <td class="col text-center">
                                <?php if ($row[8] == NULL) { ?><!--Not initiated-->
                                  <button type="button" class="btn btn-icon btn-round btn-black" disabled>
                                    <i class="far fa-eye-slash"></i>
                                  </button>
                                <?php } else if ($row[9] != NULL) { ?><!--Approved-->
                                  <button type="button" class="btn btn-icon btn-round btn-black btnDataModal" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0] . ',' . $row[8]; ?>" id="btnModalView">
                                    <i class="fas fa-eye"></i>
                                  </button>
                                <?php } else if ($_SESSION['login'] == $row[3] && $_SESSION['login'] == 1) {?><!--Pending with this user of no revert privileges-->
                                  <button type="button" class="btn btn-icon btn-round btn-black btnDataModal" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0] . ',' . $row[8]; ?>" id="btnModalTable" onclick="addButton(0)">
                                    <i class="fas fa-table"></i>
                                  </button>
                                <?php } else if ($_SESSION['login'] == $row[3] && $_SESSION['login'] == 3) { ?><!--Pending with this user of approval privileges-->
                                  <button type="button" class="btn btn-icon btn-round btn-black btnDataModal" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0] . ',' . $row[8]; ?>" id="btnModalTablePriv" onclick="addButton(2)">
                                    <i class="fas fa-table"></i>
                                  </button>
                                <?php } else if ($_SESSION['login'] == $row[3]) { ?><!--Pending with this user of revert and forward privilage-->
                                  <button type="button" class="btn btn-icon btn-round btn-black btnDataModal" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0] . ',' . $row[8]; ?>" id="btnModalTable" onclick="addButton(1)">
                                    <i class="fas fa-table"></i>
                                  </button>
                                <?php } else {?><!--Pending with other user -->
                                  <button type="button" class="btn btn-icon btn-round btn-black btnDataModal" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0] . ',' . $row[8]; ?>" id="btnModalView">
                                    <i class="fas fa-eye"></i>
                                  </button>
                                <?php } ?>
                                </td>
                                <!-- End of View Table Button-->
                                <!-- Download Button -->
                                <td class="col text-center">
                                <?php if ($row[8] != null && $row[9] != null) { ?><!--Approved and Downloadable-->
                                  <form method = "POST" action="alt_pdf.php">
                                    <input type="hidden" name="fy-id" value="<?php echo $row[0];?>">
                                    <input type="hidden" name="approval-date" value="<?php echo $row[9];?>">
                                    <button type="submit" class="btn btn-icon btn-round btn-black">
                                      <i class="fas fa-download"></i>
                                    </button>
                                <?php } else {?><!--Not Downloadable-->
                                  <button type="button" class="btn btn-icon btn-round btn-black" disabled>
                                    <i class="fas fa-exclamation-circle"></i>
                                  </button>
                                <?php } ?>
                                </td>
                                <!-- End of Download Button-->
                              </tr>
                            <?php } ?>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Modal for allotment tables -->
                <div class="modal fade" tab-index="-1" data-bs-backdrop="static" data-bs-keyboard="false" id="dataModal">
                  <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">Sub-allotment Data</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <div class="card">
                          <div class="card-header">
                            <ul class="nav nav-tabs card-header-tabs" role="tablist">
                              <li class="nav-item" role="presentation"><button type="button" class="nav-link active" href="#tab-table1" data-bs-toggle="tab" data-bs-target="#tab-table1">Home</button></li>
                              <li class="nav-item"><button type="button" class="nav-link" href="#tab-table2" data-bs-toggle="tab" data-bs-target="#tab-table2">SAA</button></li>
                              <li class="nav-item"><button type="button" class="nav-link" href="#tab-table3" data-bs-toggle="tab" data-bs-target="#tab-table3">OS</button></li>
                            </ul>
                          </div>
                          <div class="card-body tab-content">
                            <div class="table-responsive tab-pane show active" id="tab-table1">
                              <table id="home-table" class="display table table-striped table-hover table-bordered">
                                <thead class="text-center">
                                  <th>FY-QTR</th>
                                  <th>CCI_ID</th>
                                  <th>Sl. No.<br>(1)</th>
                                  <th>District<br>(2)</th>
                                  <th>CCI<br>(3)</th>
                                  <th>Unit No.<br>(4)</th>
                                  <th>CCI run by<br>(5)</th>
                                  <th>No. of Months<br>(6)</th>
                                  <th>Average No of Children days per month<br>(7)</th>
                                  <th>Average No of CWSN Children days per month<br>(8)</th>
                                  <th>Maintenance and Others Cost<br>(9)</th>
                                  <th>Beadding Cost<br>(10)</th>
                                  <th>CWSN fund<br>(11)</th>
                                  <th>Administrative cost<br>(12)</th>
                                  <th>CWSN Equipment<br>(13)</th>
                                  <th>Salary of staff<br>(14)</th>
                                  <th>Salary for CWSN Staff<br>(15)</th>
                                  <th>Total Salary<br>(16)</th>
                                  <th>Total (Recurring Cost)<br>(17)</th>
                                  <th>Amount Adjustments<br>(18)</th>
                                  <th>District Recommendation<br>(19)</th>
                                  <th>Fund to be released<br>(20)</th>
                                  <th>INIT-DT</th>
                                  <th>Remarks</th>
                                </thead>
                              </table>
                            </div>
                            <div class="table-responsive tab-pane" id="tab-table2">
                              <table id="saa-table" class="display table table-striped table-hover table-bordered">
                              <thead class="text-center">
                                  <th>FY-QTR</th>
                                  <th>CCI_ID</th>
                                  <th>Sl. No.<br>(1)</th>
                                  <th>District<br>(2)</th>
                                  <th>CCI Name<br>(3)</th>
                                  <th>Unit No.<br>(4)</th>
                                  <th>CCI run by<br>(5)</th>
                                  <th>No. of Months<br>(6)</th>
                                  <th>Average No of Children days per month<br>(7)</th>
                                  <th>Maintenance Cost @ ₹2,500 per child per month<br>(8)</th>
                                  <th>Administrative cost @ ₹56,250 per quarter per unit<br>(9)</th>
                                  <th>Salary of staff @ ₹3,68,204 per quarter per unit<br>(10)</th>
                                  <th>Total (Recurring Cost)<br>(11)</th>
                                  <th>Amount Adjustments<br>(12)</th>
                                  <th>District Recommendation<br>(13)</th>
                                  <th>Fund to be released<br>(14)</th>
                                  <th>INIT-DT</th>
                                  <th>Remarks</th>
                                </thead>
                              </table>
                            </div>
                            <div class="table-responsive tab-pane" id="tab-table3">
                              <table id="os-table" class="display table table-striped table-hover table-bordered">
                                <thead class="text-center">
                                  <th>FY-QTR</th>
                                  <th>CCI_ID</th>
                                  <th>Sl. No.<br>(1)</th>
                                  <th>District<br>(2)</th>
                                  <th>CCI Name<br>(3)</th>
                                  <th>Unit No.<br>(4)</th>
                                  <th>CCI run by<br>(5)</th>
                                  <th>No. of Months<br>(6)</th>
                                  <th>Average No of Children days per month<br>(7)</th>
                                  <th>Maintenance Cost @ ₹2,500 per child per month<br>(8)</th>
                                  <th>Administrative cost @ ₹1,25,000 per quarter per unit<br>(9)</th>
                                  <th>Salary of staff @ ₹3,25,247 per quarter per unit<br>(10)</th>
                                  <th>Total (Recurring Cost)<br>(11)</th>
                                  <th>Amount Adjustments<br>(12)</th>
                                  <th>District Recommendation<br>(13)</th>
                                  <th>Fund to be released<br>(14)</th>
                                  <th>INIT-DT</th>
                                  <th>Remarks</th>
                                </thead>
                              </table>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Modal for allotment edit form -->
                <div class="modal fade" tab-index="-1" data-bs-backdrop="static" data-bs-keyboard="false" id="formModal">
                  <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">Review and Edit Expenditure Allotment</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

    <!-- Chart JS -->
    <script src="../assets/js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="../assets/js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="../assets/js/plugin/datatables/datatables.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
  	<script src="https://cdn.datatables.net/v/bs5/jszip-3.10.1/dt-2.0.8/af-2.7.0/b-3.0.2/b-colvis-3.0.2/b-html5-3.0.2/b-print-3.0.2/cr-2.0.3/date-1.5.2/fc-5.0.1/fh-4.0.1/kt-2.12.1/r-3.0.2/rg-1.5.0/rr-1.5.0/sc-2.4.3/sb-1.7.1/sp-2.3.1/sl-2.0.3/sr-1.4.1/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- jQuery Vector Maps -->
    <script src="../assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
    <script src="../assets/js/plugin/jsvectormap/world.js"></script>

    <!-- Sweet Alert -->
    <script src="../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Kaiadmin JS -->
    <script src="../assets/js/kaiadmin.min.js"></script>
    <script>
        $(document).ready(function() {
            $('li.nav-item').each(function() {
                if (window.location.pathname.includes($(this).children('a').attr('href'))) {
                    $(this).addClass('active');
                }
            });
            var home_table = $("#home-table").DataTable();
            var saa_table = $("#saa-table").DataTable();
            var os_table = $("#os-table").DataTable();
        });

        const dataModal = document.getElementById('dataModal');
        const formModal = document.getElementById('formModal');

        function populateDataModal() {
          // var data = event.relatedTarget.getAttribute('data-bs-whatever');
          var data = $('.btnDataModal').attr('data-bs-whatever');
          var formData = new FormData();
          formData.append('data', data);
          // clear old table
          $('#home-table').DataTable().destroy();
          $('#saa-table').DataTable().destroy();
          $('#os-table').DataTable().destroy();
                
          $.ajax({
              url: "get_expenditure.php",
              type: "POST",
              data: formData,
              dataType: 'json',
              success: function(response){
                $('#dataModal .modal-title').text('Sub Allotment Data : '.concat(response.quarter));
                home_table = $("#home-table").DataTable({
                  data: response.homedata,
                  columnDefs: [
                    { targets: [0, 1, 22, 24], visible: false },
                    { 
                      targets: [5, 7, 8, 9],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { 
                      targets: [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
                      render: function(data, type, row) {
                        return Number(data).toLocaleString('en-IN', {
                          style: 'currency',
                          currency: 'INR'
                        });
                      },
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { targets: 23, createdCell: function (td) {$(td).addClass('text-start');} }
                  ],
                  fixedColumns: {
                    start: 3
                  },
                  createdRow: (row, data, dataIndex) => {
                    if (data[23] !== null && data[23].length > 0) {
                      $(row).addClass('table-warning');
                    }
                    if (data[24] !== null && data[24] >= <?php echo $_SESSION['login'] ?>) {
                      $(row).removeClass('table-warning');
                      $(row).addClass('table-success');
                    }
                  },
                  select: 'single',
                  searching: false,
                  paging:false,
                  scrollCollapse: true,
                  scrollX: true,
                  scrollY: '50vh'
                });

                saa_table = $("#saa-table").DataTable({
                  data: response.saadata,
                  columnDefs: [
                    { targets: [0, 1, 16], visible: false },
                    {
                      targets: [2, 7, 8],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { 
                      targets: [9, 10, 11, 12, 13, 14, 15],
                      render: function(data, type, row) {
                        return Number(data).toLocaleString('en-IN', {
                          style: 'currency',
                          currency: 'INR'
                        });
                      },
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { targets: 17, createdCell: function (td) {$(td).addClass('text-start');} }
                  ],
                  fixedColumns: {
                    start: 3
                  },
                  createdRow: (row, data, dataIndex) => {
                    if (data[17] !== null && data[17].length > 0) {
                      $(row).addClass('table-warning');
                    }
                    if (data[18] !== null && data[18] >= <?php echo $_SESSION['login'] ?>) {
                      $(row).removeClass('table-warning');
                      $(row).addClass('table-success');
                    }
                  },
                  select: 'single',
                  searching: false,
                  paging:false,
                  scrollCollapse: true,
                  scrollX: true,
                  scrollY: '50vh'
                });

                os_table = $("#os-table").DataTable({
                  data: response.osdata,
                  columnDefs: [
                    { targets: [0, 1, 16], visible: false },
                    {
                      targets: [2, 7, 8],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { 
                      targets: [9, 10, 11, 12, 13, 14, 15],
                      className: 'text-right',
                      render: function(data, type, row) {
                        return Number(data).toLocaleString('en-IN', {
                          style: 'currency',
                          currency: 'INR'
                        });
                      }
                    },
                    { targets: 17, createdCell: function (td) {$(td).addClass('text-start');} }
                  ],
                  fixedColumns: {
                    start: 3
                  },
                  createdRow: (row, data, dataIndex) => {
                    if (data[17] !== null && data[17].length > 0) {
                      $(row).addClass('table-warning');
                    }
                    if (data[18] !== null && data[18] >= <?php echo $_SESSION['login'] ?>) {
                      $(row).removeClass('table-warning');
                      $(row).addClass('table-success');
                    }
                  },
                  select: 'single',
                  searching: false,
                  paging:false,
                  scrollCollapse: true,
                  scrollX: true,                        
                  scrollY: '50vh'
                });

                // Listen for Bootstrap tab change
                document.querySelectorAll('button[data-bs-toggle="tab"]').forEach((el) => {
                  el.addEventListener('shown.bs.tab', () => {
                    DataTable.tables({ visible: true, api: true })
                    .columns.adjust();
                  });
                });

                // Row selection
                home_table.on('select', function (e, dt, type, indexes) {
                  var rowData = home_table.row(indexes).data();
                  if (rowData[24] > <?php echo $_SESSION['login'] ?>) {
                    swal("Verified", "Allotment already verified and cannot be modified!", {
                      icon: "info",
                      buttons: {
                        confirm: {
                          className: "btn btn-info",
                        },
                      }
                    })
                  } else {
                    populateFormModal(rowData[0] + ',' + rowData[1] + ',' + rowData[22]);
                  }
                })
                saa_table.on('select', function (e, dt, type, indexes) {
                  var rowData = saa_table.row(indexes).data();
                  if (rowData[18] > <?php echo $_SESSION['login'] ?>) {
                    swal("Verified", "Allotment already verified and cannot be modified!", {
                      icon: "info",
                      buttons: {
                        confirm: {
                          className: "btn btn-info",
                        },
                      }
                    })
                  } else {
                    populateFormModal(rowData[0] + ',' + rowData[1] + ',' + rowData[16]);
                  }
                })
                os_table.on('select', function (e, dt, type, indexes) {
                  var rowData = os_table.row(indexes).data();
                  if (rowData[24] > <?php echo $_SESSION['login'] ?>) {
                    swal("Verified", "Allotment already verified and cannot be modified!", {
                      icon: "info",
                      buttons: {
                        confirm: {
                          className: "btn btn-info",
                        },
                      }
                    })
                  } else {
                    populateFormModal(rowData[0] + ',' + rowData[1] + ',' + rowData[16]);
                  }
                })
              },
              error: function(xhr, status, error) {
                  console.error('AJAX Error: ' + status + error);
              },
              cache: false,
              contentType: false,
              processData: false
          });
        }
        dataModal.addEventListener('show.bs.modal', populateDataModal);

        dataModal.addEventListener('hidden.bs.modal', function(event) {
          $('.modal-footer').html("");
          home_table.destroy();
          saa_table.destroy();
          os_table.destroy();
        });
        
        function populateFormModal(data) {
          $('#formModal .modal-body').load('allotment_edit_form.php?data=' + data, function() {
            $('#formModal .modal-body').css("overflow","hidden");
            $('#formModal').modal('show');

            // Submit the form
            $('#fExpenditure').on('submit', function(e) {
                e.preventDefault();
                var action = e.originalEvent.submitter.value;
                swal({
                  title: "Are you sure?",
                  text: "You won't be able to revert this!",
                  icon: "warning",
                  buttons: {
                    confirm: {
                      text: "Yes, Confirm!",
                      className: "btn btn-success",
                    },
                    cancel: {
                      visible: true,
                      className: "btn btn-danger",
                    },
                  },
                }).then((confirmed) => {
                  if (confirmed) {
                  e.preventDefault();
                  var formData = new FormData(this);
                  formData.append('b_id', action);
                  $.ajax({
                      url: "update_allotment.php",
                      type: "POST",
                      data: formData,
                      contentType: false,
                      processData: false,
                      dataType: 'json',
                      success: function(response) {
                          // console.log(response);
                          if (response.status) {
                              swal({
                                  title: "Successfull!",
                                  text: "Allotment " + response.message + " successfully.",
                                  icon: "success",
                                  buttons: {
                                  confirm: {
                                  className: "btn btn-success",
                                  },
                                  },
                              }).then(function () {
                                $('#formModal').modal('hide');
                                populateDataModal();
                              });
                          } else {
                              swal({
                                  title: "Error!",
                                  text: "Some error occured. Operation failed.",
                                  icon: "error",
                                  buttons: {
                                      confirm: {
                                          className: "btn btn-danger",
                                      },
                                  },
                              });
                          }
                      },
                      error: function(xhr, status, error) {
                          alert("Error updating expenditure: " + error);
                      }
                  });
                }
              });
            });
          });
        }

        formModal.addEventListener('hidden.bs.modal', function(event) {
          home_table.rows().deselect();
          saa_table.rows().deselect();
          os_table.rows().deselect();
        });
        
        function addButton(mode) {
              $('.modal-footer').append('<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>');
          switch (mode) {
            case 2:
              $('.modal-footer').append('<a href="#" id="revert" class="btn btn-primary" onclick="file_action(this.id)"><i class="fas fa-arrow-alt-circle-left"></i> Revert</a>');
              $('.modal-footer').append('<a href="#" id="approve" class="btn btn-primary" onclick="file_action(this.id)"><i class="fas fa-check-circle"></i> Approve</a>');
              break;
            case 1:
              $('.modal-footer').append('<a href="#" id="revert" class="btn btn-primary" onclick="file_action(this.id)"><i class="fas fa-arrow-alt-circle-left"></i> Revert</a>');
              $('.modal-footer').append('<a href="#" id="forward" class="btn btn-primary" onclick="file_action(this.id)">Forward <i class="fas fa-arrow-alt-circle-right"></i></a>');
              break;
            case 0:
              $('.modal-footer').append('<a href="#" id="forward" class="btn btn-primary" onclick="file_action(this.id)">Forward <i class="fas fa-arrow-alt-circle-right"></i></a>');
              break;
          }
        }

        function file_action(action) {
          // console.log("Action: " + action);
          if (
            !($.fn.dataTable.isDataTable("#home-table")) &&
            !($.fn.dataTable.isDataTable("#saa-table")) &&
            !($.fn.dataTable.isDataTable("#os-table"))
          ) {
            swal("No Data", "Nothing to do!", {
                    icon: "error",
                      buttons: {
                        confirm: {
                            className: "btn btn-danger",
                        },
                      },
                  });
            exit();
          }
          swal({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            buttons: {
              confirm: {
                text: "Yes, " +action + "!",
                className: "btn btn-success",
              },
              cancel: {
                visible: true,
                className: "btn btn-danger",
              },
            },
          }).then((Forward) => {
            if (Forward) {
              var fy_id = $('#home-table').DataTable().rows(0).data()[0][0];
              var init_dt = $('#home-table').DataTable().rows(0).data()[0][22];
              var formData = new FormData();
              formData.append('fy_id', fy_id);
              formData.append('init_dt', init_dt);
              formData.append('action', action);
              // forward csv file
              $.ajax({
                url: "file_movement.php",
                type: "POST",
                data: formData,
                dataType: 'json',
                success: function(response){
                  // console.log(response);
                  switch (response.status) {
                    case 0:
                      swal({
                        title: "Error!",
                        text: "Error!" + response.message,
                        icon: "error",
                        buttons: {
                            confirm: {
                                className: "btn btn-danger",
                            },
                        },
                      });
                      break;
                    case 1:
                      // clear table data
                      $('#home-table').DataTable().clear();
                      $('#home-table').DataTable().destroy();
                      $('#saa-table').DataTable().clear();
                      $('#saa-table').DataTable().destroy();
                      $('#os-table').DataTable().clear();
                      $('#os-table').DataTable().destroy();
                      swal({
                        title: "Successfull!",
                        text: response.message,
                        icon: "success",
                        buttons: {
                          confirm: {
                          className: "btn btn-success",
                          },
                        },
                      }).then(function () {
                        location.reload();
                      });                      
                      break;
                  }
                },
                error: function(xhr, status, error) {
                  console.error('AJAX Error: ' + status + error);
                },
                cache: false,
                contentType: false,
                processData: false
              });
            } else {
              swal.close();
            }
          });
        }
        </script>
</body>
</html>