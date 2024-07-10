<?php
session_start ();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
$obj=new DbFunction();
$rs_fy = $obj->get_fys();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>Upload Sub-allotment CSV</title>
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
		<!-- Navigation -->
		<?php include('sidebar.php');?>
		<div class="main-panel">
			<div class="main-header"></div>
			<div class="container">
				<div class="page-inner">
					<div class="page-header">
						<ul class="breadcrumbs mb-3">
							<li class="nav-home">
								<a href="view.php">
									<i class="icon-home"></i>
								</a>
							</li>
							<li class="separator">
								<i class="icon-arrow-right"></i>
							</li>
							<li class="nav-item">
								<a href="#">Upload Allotment File</a>
							</li>
						</ul>
					</div>
					<form id="csvform" class="needs-validation" novalidate="">
					<div class="row">
						<!-- /.row -->
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">CSV File Upload</h4>
									<p class="card-subtitle">Upload the CSV file containing CCIs sub-allotment data.</p>
								</div>
								<div class="card-body">
									<div class="row mb-3">
										<label for="fy" class="col-sm-3 col-form-label">Select Financial Year: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<select class="form-control" name="fy" id="fy" onchange="get_quarter()" required >
												<option VALUE="">SELECT</option>
												<?php while($res=$rs_fy->fetch_object()){?>
												<option VALUE="<?php echo htmlentities($res->fy);?>"><?php echo htmlentities($res->fy)?></option>
												<?php }?>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<label for="fy-qtr" class="col-sm-3 col-form-label">Financial Quarter: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<select class="form-control" name="fy-qtr" id="fy-qtr" onchange="enable_file()" required disabled>
												<option VALUE="">SELECT</option>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<label for="formFile" class="col-sm-3 col-form-label">Upload Sub-Allotment CSV: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<input class="form-control" type="file" accept=".csv" name="csvfile" id="csvfile" required disabled>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-sm-3 col-form-label"></div>
										<div class="col-lg-6">
											<button type="submit" class="btn btn-primary" name="submit" value="Upload">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-upload" viewBox="0 0 16 16">
													<path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
													<path d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708z"/>
												</svg>
												Upload
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</form>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Sub Allotment Data </h4> <br/>
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
									<div class="card-footer">
										<a href="#" id="forward" class="btn btn-primary" disabled="disabled">
											Forward
											<i class="fas fa-arrow-alt-circle-right"></i>
										</a>
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

		function get_quarter() {
			var fy = $("#fy").find(":selected").text();
			if(fy != "SELECT") {
				$("#fy-qtr").attr("disabled", false); {
					listquarter(fy);
					$("#fy-qtr").attr("required", true);
				}
			}
			else {
				$("#fy-qtr").attr("disabled", true);
			}
		}

		function enable_file() {
			var fy = $("#fy-qtr").find(":selected").text();
			if(fy != "SELECT") {
				$("#csvfile").attr("disabled", false); {
					$("#csvfile").attr("required", true);
				}
			}
			else {
				$("#csvfile").attr("disabled", true);
			}
		}
		
		function listquarter(fy) {
			$.ajax({
				url: "fy_qtr.php",
				type: "POST",
				data:{f:fy},
				success: function(data){
					//alert(data);
					$("#fy-qtr").html(data);
				}
			});
		}

	$(document).ready(function() {
		$('li.nav-item').each(function() {
			if (window.location.pathname.includes($(this).children('a').attr('href'))) {
				$(this).addClass('active');
			}
		});

		$('#csvform').on('submit', function(e) {
			e.preventDefault();
			var formData = new FormData(this);

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
					$('.card-title').text('Sub Allotment Data : '.concat(response.quarter));
					$("#home-table").DataTable({
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
						scrollCollapse: true,
						scrollX: true,
						scrollY: '50vh'
					});

					$("#saa-table").DataTable({
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
						searching: false,
						paging:false,
						scrollCollapse: true,
						scrollX: true,
						scrollY: '50vh'
					});

					$("#os-table").DataTable({
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
		});

		$("#forward").on("click", function (e) {
			e.preventDefault();
			if (
				!($.fn.dataTable.isDataTable("#home-table")) &&
				!($.fn.dataTable.isDataTable("#saa-table")) &&
				!($.fn.dataTable.isDataTable("#os-table"))
			) {
				swal("No Data", "Nothing to forward!", {
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
              type: "warning",
              buttons: {
                confirm: {
                  text: "Yes, forward it!",
                  className: "btn btn-success",
                },
                cancel: {
                  visible: true,
                  className: "btn btn-danger",
                },
              },
            }).then((Forward) => {
              if (Forward) {
				var formData = new FormData();
				formData.append('fy-qtr', $("#csvform")[0]);
				formData.append('action', 'forward');
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
                                    text: "Failed to forward the file. Please try again later.",
                                    type: "error",
                                    buttons: {
                                        confirm: {
                                            className: "btn btn-danger",
                                        },
                                    },
                                });
                                break;
							case 1:
								// clear form data
								$("#csvform")[0].reset();
								// clear table data
								$('#home-table').DataTable().clear();
								$('#home-table').DataTable().destroy();
								$('#saa-table').DataTable().clear();
								$('#saa-table').DataTable().destroy();
								$('#os-table').DataTable().clear();
								$('#os-table').DataTable().destroy();
								swal({
								title: "Forwarded!",
								text: "Your file has been forward for approval.",
								type: "success",
								buttons: {
									confirm: {
									className: "btn btn-success",
									},
								},
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
		})
	});
	</script>
</body>
</html>