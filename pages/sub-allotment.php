<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
include('../config/utilityfunc.php');

$obj = new DbFunction();
$arr = $obj->get_fy_status();

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
    
</head>

<body>
    <div class="wrapper">
        <?php include('sidebar.php');?>
        <div class="main-panel">
            <div class="main-header">

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
                          <table class="table mb-0">
                            <thead class="thead-dark align-items-center">
                              <tr>
                                <th scope="col" class="text-center">Financial Year</th>
                                <th scope="col" class="text-center">Quarter</th>
                                <th scope="col" class="text-center">Status</th>
                                <th scope="col" class="text-center">Total Amount</th>
                                <th scope="col" class="text-center">With</th>
                                <th scope="col" class="text-center">Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                              <?php foreach ($arr as $row) { ?>
                              <tr>
                                <td class="text-center"><?php echo $row[1]; ?></td>
                                <td class="text-center"><?php echo $row[2]; ?></td>

                                <?php if ($row[3] == NULL) { ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-danger">Not Initiated</span></td>
                                <?php } else if ($row[5] == 0){ ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-warning">Pending</span></td>
                                <?php } else { ?>
                                <td class="text-center"><span style="font-size: 15px;" class="badge rounded-pill badge-success">Approved</span></td>
                                <?php }?>

                                <?php if ($row[6] == NULL) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-end">₹<?php echo IND_money_format($row[6]);?></td>
                                <?php }?>
                                
                                <?php if ($row[5] != 0) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-center"><?php echo ($row[4] != NULL ? $row[4] : "NA");?></td>
                                <?php }?>

                                <?php if ($row[3] == NULL) { ?> <!--Not initiated-->
                                <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black" disabled>
                                    <i class="far fa-eye-slash"></i>
                                  </button>
                                </td>
                                <?php } else if ($row[5] == 0 && $_SESSION['login'] == $row[3]){ ?><!--Pending with this user-->
                                <?php if ($_SESSION['login'] == 3) {?><!--Highest privileges-->
                                  <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0]; ?>" id="btnModalTablePriv" onclick="addButton(2)">
                                    <i class="fas fa-table"></i>
                                  </button>
                                </td>
                                <?php } else if ($_SESSION['login'] == 1) {?><!--Lowest privilage-->
                                <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0]; ?>" id="btnModalTable" onclick="addButton(0)">
                                    <i class="fas fa-table"></i>
                                  </button>
                                </td>
                                <?php } else {?><!--Other privilage-->
                                <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0]; ?>" id="btnModalTable" onclick="addButton(1)">
                                    <i class="fas fa-table"></i>
                                  </button>
                                </td>
                                <?php }} else if ($row[5] == 0){ ?><!--Pending with other user-->
                                <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black" data-bs-toggle="modal" data-bs-target="#dataModal" data-bs-whatever="<?php echo $row[0]; ?>" id="btnModalView">
                                    <i class="fas fa-eye"></i>
                                  </button>
                                </td>
                                <?php } else { ?><!--Approved-->
                                <td class="text-center">  
                                  <button type="button" class="btn btn-icon btn-round btn-black">
                                    <i class="fas fa-download"></i>
                                  </button>
                                </td>
                                <?php }?>
                              </tr>
                              <?php } ?>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
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
                              <li class="nav-item" role="presentation"><button class="nav-link active" href="#tab-table1" data-bs-toggle="tab" data-bs-target="#tab-table1">Home</button></li>
                              <li class="nav-item"><button class="nav-link" href="#tab-table2" data-bs-toggle="tab" data-bs-target="#tab-table2">SAA</button></li>
                              <li class="nav-item"><button class="nav-link" href="#tab-table3" data-bs-toggle="tab" data-bs-target="#tab-table3">OS</button></li>
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
                                  <th>CCI Name<br>(3)</th>
                                  <th>Unit No.<br>(4)</th>
                                  <th>CCI run by<br>(5)</th>
                                  <th>No. of Months<br>(6)</th>
                                  <th>Average No of Children days per month<br>(7)</th>
                                  <th>Average No of CWSN Children days per month<br>(8)</th>
                                  <th>Maintenance and Others Cost @ ₹3,000 per child per month<br>(9)</th>
                                  <th>Beadding Cost @ ₹250 per child per quarter<br>(10)</th>
                                  <th>CWSN fund @ ₹4,400 per child per month<br>(11)</th>
                                  <th>Administrative cost @ ₹2,50,000 per quarter per unit<br>(12)</th>
                                  <th>CWSN Equipment @ ₹1,00,000 per unit per quarter<br>(13)</th>
                                  <th>Salary of staff @ ₹6,57,280 per quarter per unit<br>(14)</th>
                                  <th>Salary for CWSN Staff @ ₹1,43,191 per quarter per unit<br>(15)</th>
                                  <th>Total Salary<br>(16)</th>
                                  <th>Total (Recurring Cost)<br>(17)</th>
                                  <th>District Recommendation<br>(18)</th>
                                  <th>Fund to be released<br>(19)</th>
                                </thead>
                              </tbody>
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
                                  <th>District Recommendation<br>(12)</th>
                                  <th>Fund to be released<br>(13)</th>
                                </thead>
                              </tbody>
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
                                  <th>District Recommendation<br>(12)</th>
                                  <th>Fund to be released<br>(13)</th>
                                </thea>
                              </tbody>
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
        });

        const dataModal = document.getElementById('dataModal');

        function populateModal(event) {
          var fy_qtr = event.relatedTarget.getAttribute('data-bs-whatever');
          var formData = new FormData();
          formData.append('fy-qtr', fy_qtr);
          // clear old table data
          $('#home-table').DataTable().clear();
          $('#home-table').DataTable().destroy();
          $('#saa-table').DataTable().clear();
          $('#saa-table').DataTable().destroy();
          $('#os-table').DataTable().clear();
          $('#os-table').DataTable().destroy();
                
          $.ajax({
              url: "get_csv_data.php",
              type: "POST",
              data: formData,
              dataType: 'json',
              success: function(response){
                $('.modal-title').text('Sub Allotment Data : '.concat(response.quarter));
                var home_table = $("#home-table").DataTable({
                  data: response.homedata,
                  columnDefs: [
                    { targets: [0, 1], visible: false },
                    { 
                      targets: [5, 7, 8, 9],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { 
                      targets: [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
                      render: function(data, type, row) {
                        return Number(data).toLocaleString('en-IN', {
                          maximumFractionDigits: 2,
                          style: 'currency',
                          currency: 'INR'
                        });
                      },
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    }
                  ],
                  searching: false,
                  paging:false,
                  info: false,                  
                  scrollCollapse: true,
                  scrollX: true,
                  scrollY: '50vh'
                });

                var saa_table = $("#saa-table").DataTable({
                  searching: false,
                  data: response.saadata,
                  columnDefs: [
                    { targets: [0, 1], visible: false },
                    {
                      targets: [2, 7, 8],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { 
                      targets: [9, 10, 11, 12, 13, 14],
                      render: function(data, type, row) {
                        return Number(data).toLocaleString('en-IN', {
                          maximumFractionDigits: 2,
                          style: 'currency',
                          currency: 'INR'
                        });
                      },
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    }
                  ],
                  paging:false,
                  scrollCollapse: true,
                  scrollX: true,
                  scrollY: '50vh'
                });

                var os_table = $("#os-table").DataTable({
                  searching: false,
                  data: response.osdata,
                  columnDefs: [
                    { targets: [0, 1], visible: false },
                    {
                      targets: [2, 7, 8],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    },
                    { 
                      targets: [9, 10, 11, 12, 13, 14],
                      className: 'text-right',
                      render: function(data, type, row) {
                        return Number(data).toLocaleString('en-IN', {
                          maximumFractionDigits: 2,
                          style: 'currency',
                          currency: 'INR'
                        });
                      }
                    }
                  ],
                  paging:false,
                  scrollCollapse: true,
                  scrollX: true,                        
                  scrollY: '50vh'
                });

                // Listen for Bootstrap tab change
                document.querySelectorAll('button[data-bs-toggle="tab"]').forEach((el) => {
                  el.addEventListener('shown.bs.tab', () => {
                    DataTable.tables({ visible: true, api: true })
                    .columns.adjust()
                    .responsive().recalc()
                    .scroller.measure();
                  });
                });
              },
              error: function(xhr, status, error) {
                  console.error('AJAX Error: ' + status + error);
              },
              cache: false,
              contentType: false,
              processData: false
          });
        }
        dataModal.addEventListener('show.bs.modal', populateModal);
        dataModal.addEventListener('hidden.bs.modal', function(event) {
          $('.modal-footer').html("");
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
          console.log("Action: " + action);
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
              var fy_qtr = $('#home-table').DataTable().rows(0).data()[0][0];
              var formData = new FormData();
              formData.append('fy-qtr', fy_qtr);
              formData.append('action', action);
              // forward csv file
              $.ajax({
                url: "csv_movement.php",
                type: "POST",
                data: formData,
                dataType: 'json',
                success: function(response){
                  console.log(response);
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