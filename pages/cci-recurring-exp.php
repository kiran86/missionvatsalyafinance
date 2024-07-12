<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
include('../config/utilityfunc.php');

$obj = new DbFunction();
$cci_arr = $obj->get_cci_details();

?> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mission Vatsalya Fund Management : CCI Recurring Expenditure Structures</title>
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
            <div class="main-header"></div>
            <div class="container">
              <div class="page-inner">
                <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4">
                  <div>
                    <h3 class="fw-bold mb-3">CCI Recurring Expenditure Structure</h3>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="card card-round">
                      <div class="card-header">
                        <div class="card-head-row">
                          <div class="card-title">CCI List</div>
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="table-responsive">
                          <table
                            id="multi-filter-select"
                            class="display table table-striped table-hover"
                          >
                            <thead class="text-center">
                              <tr>
                                <th>cci_id<br>0</th>
                                <th>District<br>1</th>
                                <th>Name of the CCI<br>2</th>
                                <th>Run by<br>3</th>
                                <th>Category<br>4</th>
                                <th>Unit No<br>5</th>
                                <th>Gender<br>6</th>
                                <th>Strength<br>7</th>
                                <th>Action</th>
                              </tr>
                            </thead>
                            <tfoot>
                              <tr>
                                <th>cci_id<br>0</th>
                                <th>District<br>1</th>
                                <th>Name of the CCI<br>2</th>
                                <th>Run by<br>3</th>
                                <th>Category<br>4</th>
                                <th>Unit No<br>5</th>
                                <th>Gender<br>6</th>
                                <th>Strength<br>7</th>
                                <th>Action</th>
                              </tr>
                            </tfoot>
                            <?php foreach ($cci_arr as $cci) {?>
                              <tr>
                                <td><?php echo $cci['id']; ?></td>
                                <td><?php echo $cci['district']; ?></td>
                                <td><?php echo $cci['cci_name']; ?></td>
                                <td><?php echo $cci['cci_run_by']; ?></td>
                                <td><?php echo $cci['category']; ?></td>
                                <td><?php echo $cci['cci_unit_no']; ?></td>
                                <td><?php echo $cci['cci_gender']; ?></td>
                                <td><?php echo $cci['strength']; ?></td>
                                <td>
                                  <div class="form-button-action">
                                    <button
                                      type="button"
                                      data-bs-toggle="tooltip"
                                      title=""
                                      class="btn btn-link btn-primary btn-lg"
                                      data-original-title="Edit Task"
                                      onclick="editCCI(<?php echo $cc['id']; ?>"
                                    >
                                      <i class="fa fa-edit"></i>
                                    </button>
                                  </div>
                                </td>
                              </tr>
                            <?php } ?>
                            </tbody>
                          </table>
                        </div>
                        </div>
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
      $("#multi-filter-select").DataTable({
        pageLength: 10,
        initComplete: function () {
          this.api()
            .columns()
            .every(function () {
              var column = this;
              var select = $(
                '<select class="form-select"><option value=""></option></select>'
              )
                .appendTo($(column.footer()).empty())
                .on("change", function () {
                  var val = $.fn.dataTable.util.escapeRegex($(this).val());

                  column
                    .search(val ? "^" + val + "$" : "", true, false)
                    .draw();
                });

              column
                .data()
                .unique()
                .sort()
                .each(function (d, j) {
                  select.append(
                    '<option value="' + d + '">' + d + "</option>"
                  );
                });
            });
        },
      });
    </script>
  </body>
</html>