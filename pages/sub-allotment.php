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
                              <?php foreach ($arr as $row) { echo "<script>alert(". $row[0] .");</script>"?>
                              <tr>
                                <td class="text-center"><?php echo $row[1]; ?></td>
                                <td class="text-center"><?php echo $row[2]; ?></td>

                                <?php if ($row[3] == NULL) { ?>
                                <td class="text-center"><span class="badge badge-danger">Not Initiated</span></td>
                                <?php } else if ($row[5] == 0){ ?>
                                <td class="text-center"><span class="badge badge-warning">Pending</span></td>
                                <?php } else { ?>
                                <td class="text-center"><span class="badge badge-success">Approved</span></td>
                                <?php }?>

                                <?php if ($row[6] == NULL) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-right"><?php echo IND_money_format($row[6]);?></td>
                                <?php }?>
                                
                                <?php if ($row[5] != 0) { ?>
                                <td class="text-center">NA</td>
                                <?php } else {?>
                                <td class="text-right"><?php echo ($row[4] != NULL ? $row[4] : "NA");?></td>
                                <?php }?>

                                <?php if ($row[3] == NULL) { ?> <!--Not initiated-->
                                <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black" disabled>
                                    <i class="far fa-eye-slash"></i>
                                  </button>
                                </td>
                                <?php } else if ($row[5] == 0){ ?><!--Pending-->
                                <td class="text-center">
                                  <button type="button" class="btn btn-icon btn-round btn-black">
                                    <i class="fa fa-align-left"></i>
                                  </button>
                                </td>
                                <?php } else { ?><!--Approved-->
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
    </script>
</body>
</html>