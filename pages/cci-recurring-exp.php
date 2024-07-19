<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

require_once("../config/Database.php");
$db = Database::getInstance();
$mysqli = $db->getConnection();
$sql = "SELECT `cci`.`id`, `cci`.`district`, `cci`.`cci_name`, `cci`.`cci_run_by`, `cci`.`category`, `cci`.`cci_unit_no`, `cci`.`cci_gender`, `cci`.`strength`, `cci_recurring_exp`.`maintenance_cost`, `cci_recurring_exp`.`bedding_cost`,`cci_recurring_exp`.`admin_expenses`, `cci_recurring_exp`.`cwsn_equip`, `cci_recurring_exp`.`cwsn_addl_grant`, `cci_recurring_exp`.`cwsn_medical`, `cci_recurring_exp`.`staff_sal`, `cci_recurring_exp`.`cwsn_staff_sal`
				FROM cci LEFT JOIN `cci_recurring_exp`
				ON `cci`.`id` = `cci_recurring_exp`.`id`
				ORDER BY cci.district, cci.cci_run_by, cci.cci_name, cci.category, cci.cci_unit_no";
$cci_arr = $mysqli->query($sql, MYSQLI_ASSOC);
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
                          <table id="cci-details" class="display table table-striped table-hover">
                            <thead class="text-center">
                              <tr>
                                <th hidden>cci_id<br>0</th>
                                <th>District<br>1</th>
                                <th>Name of the CCI<br>2</th>
                                <th>Run by<br>3</th>
                                <th>Category<br>4</th>
                                <th>Unit No<br>5</th>
                                <th>Gender<br>6</th>
                                <th>Strength<br>7</th>
                                <th hidden>maintenance_cost</th>
                                <th hidden>bedding_cost</th>
                                <th hidden>admin_expenses</th>
                                <th hidden>cwsn_equip</th>
                                <th hidden>cwsn_addl_grant</th>
                                <th hidden>cwsn_medical</th>
                                <th hidden>staff_sal</th>
                                <th hidden>cwsn_staff_sal</th>
                                <th>Action</th>
                              </tr>
                            </thead>
                            <tfoot>
                              <tr>
                                <th hidden>cci_id<br>0</th>
                                <th>District<br>1</th>
                                <th>Name of the CCI<br>2</th>
                                <th>Run by<br>3</th>
                                <th>Category<br>4</th>
                                <th>Unit No<br>5</th>
                                <th>Gender<br>6</th>
                                <th>Strength<br>7</th>
                                <th hidden>maintenance_cost</th>
                                <th hidden>bedding_cost</th>
                                <th hidden>admin_expenses</th>
                                <th hidden>cwsn_equip</th>
                                <th hidden>cwsn_addl_grant</th>
                                <th hidden>cwsn_medical</th>
                                <th hidden>staff_sal</th>
                                <th hidden>cwsn_staff_sal</th>
                                <th>Action</th>
                              </tr>
                            </tfoot>
                            <tbody>
                            <?php foreach ($cci_arr as $cci) {?>
                              <tr>
                                <td hidden><?php echo $cci['id']; ?></td>
                                <td><?php echo $cci['district']; ?></td>
                                <td><?php echo $cci['cci_name']; ?></td>
                                <td><?php echo $cci['cci_run_by']; ?></td>
                                <td><?php echo $cci['category']; ?></td>
                                <td class="text-end"><?php echo $cci['cci_unit_no']; ?></td>
                                <td><?php echo $cci['cci_gender']; ?></td>
                                <td class="text-end"><?php echo $cci['strength']; ?></td>
                                <td hidden><?php echo $cci['maintenance_cost']; ?></td>
                                <td hidden><?php echo $cci['bedding_cost']; ?></td>
                                <td hidden><?php echo $cci['admin_expenses']; ?></td>
                                <td hidden><?php echo $cci['cwsn_equip']; ?></td>
                                <td hidden><?php echo $cci['cwsn_addl_grant']; ?></td>
                                <td hidden><?php echo $cci['cwsn_medical']; ?></td>
                                <td hidden><?php echo $cci['staff_sal']; ?></td>
                                <td hidden><?php echo $cci['cwsn_staff_sal']; ?></td>
                                <td>
                                  <div class="form-button-action">
                                    <button
                                      type="button"
                                      title=""
                                      class="btn btn-link btn-primary btn-lg edit-cci"
                                      data-original-title="Edit Task"
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
            <div class="modal fade modal-lg" id="modalCCIEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                <form class="needs-validation" novalidate="" id="cci-edit-expenditure">
                  <div class="modal-header">
                    <div class="modal-title font-monospace">
                    <h2 class="fs-5" id="cci_name_district"></h2>
                    <h6 class="fs-6" id="cci_run_by"></h6>
                    <h6 class="fs-6" id="cci_category_unit"></h6>
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                      <input type="hidden" name="cci_id" id="cci_id" value="">
                      <div class="row mb-3">
                          <label for="maintenance_cost" class="col-5 col-form-label text-end">Maintanance Cost:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="maintenance_cost" id="maintenance_cost" required>
                          <span class="input-group-text text-primary col-5">per child per month</span>
                        </div>
                      </div>
                      <div class="row mb-3">
                          <label for="bedding_cost" class="col-5 col-form-label text-end">Bedding Cost:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="bedding_cost" id="bedding_cost" required>
                          <span class="input-group-text text-primary col-5">per child per quarter</span>
                        </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="admin_expenses" class="col-5 col-form-label text-end">Administrative Expenses:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="admin_expenses" id="admin_expenses" required>
                          <span class="input-group-text text-primary col-5">per unit per quarter</span>
                        </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="cwsn_equip" class="col-5 col-form-label text-end">Specialized Equipments & Materials:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="cwsn_equip" id="cwsn_equip" required>
                          <span class="input-group-text text-primary col-5">per unit per quarter</span>
                        </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="cwsn_addl_grant" class="col-5 col-form-label text-end">Additional Grant for CWSN:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="cwsn_addl_grant" id="cwsn_addl_grant" required>
                          <span class="input-group-text text-primary col-5">per CWSN per month</span>
                        </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="cwsn_medical" class="col-5 col-form-label text-end">Specialized Medical Assistance for CWSN:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control col-1 text-end" name="cwsn_medical" id="cwsn_medical" required>
                          <span class="input-group-text text-primary col-5">per CWSN per month</span>
                        </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="staff_sal" class="col-5 col-form-label text-end">Staff Salary:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="staff_sal" id="staff_sal" required>
                          <span class="input-group-text text-primary col-5">per unit per quarter</span>
                        </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="cwsn_staff_sal" class="col-5 col-form-label text-end">Salary for CWSN Staff:</label>
                        <div class="input-group col">
                          <span class="input-group-text">₹</span>
                          <input type="text" class="form-control text-end" name="cwsn_staff_sal" id="cwsn_staff_sal" required>
                          <span class="input-group-text text-primary col-5">per unit per quarter</span>
                        </div>
                      </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
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
      $("#cci-details").DataTable({
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

      $(document).ready(function () {
        $('li.nav-item').each(function() {
            if (window.location.pathname.includes($(this).children('a').attr('href'))) {
                $(this).addClass('active');
            }
        });

        var table = $('#cci-details').DataTable();
        $('#cci-details tbody').on('click', '.edit-cci', function() {
          var data = table.row($(this).parents('tr')).data();
          // console.log(data);
          $('#cci_id').val(data[0]);
          $('#cci_name_district').text(data[2] + ', ' + data[1]);
          $('#cci_run_by').text(data[3]);
          $('#cci_category_unit').text(data[4] + ' for ' + data[6] + ' unit ' + data[5]);
          $('#maintenance_cost').val(data[8]);
          $('#bedding_cost').val(data[9]);
          $('#admin_expenses').val(data[10]);
          $('#cwsn_equip').val(data[11]);
          $('#cwsn_addl_grant').val(data[12]);
          $('#cwsn_medical').val(data[13]);
          $('#staff_sal').val(data[14]);
          $('#cwsn_staff_sal').val(data[15]);
          $('#modalCCIEdit').modal('show');
        });

        $('#cci-edit-expenditure').on('submit', function(e) {
          e.preventDefault();
          // var form = document.getElementById('cci-edit-expenditure');
          var formData = new FormData(this);
          $.ajax({
            url: "set_cci_expenditure.php",
            type: "POST",
            data: formData,
            dataType: 'json',
            success: function(response){
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
        });
      });

      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
          form.addEventListener('submit', event => {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }

          form.classList.add('was-validated')
          }, false)
        })
      })()
    </script>
  </body>
</html>