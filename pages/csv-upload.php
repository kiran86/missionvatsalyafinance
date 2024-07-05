<?php
session_start ();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
$obj=new DbFunction();
$rs_fy = $obj->get_fys() ;
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
											<select class="form-control" name="fy-qtr" id="fy-qtr" required disabled>
												<option VALUE="">SELECT</option>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<label for="formFile" class="col-sm-3 col-form-label">Upload Sub-Allotment CSV: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<input class="form-control" type="file" accept=".csv" name="csvfile" id="csvfile" required>
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
									<h4 class="card-title">Sub Allotment Data</h4>
									<ul class="nav nav-tabs card-header-tabs" role="tablist">
										<li class="nav-item" role="presentation"><button class="nav-link active" href="#tab-table1" data-bs-toggle="tab" data-bs-target="#tab-table1">Home</button></li>
										<li><button class="nav-link" href="#tab-table2" data-bs-toggle="tab" data-bs-target="#tab-table2">SAA</button></li>
									</ul>
								</div>
								<div class="card-body tab-content">
									<div class="table-responsive tab-pane show active" id="tab-table1">
										<table id="home-table" class="display table table-striped table-hover table-bordered">
											<thead>
												<th>Sl. No.</th>
												<th>District</th>
												<th>Name of the CCI</th>
												<th>No. of Units</th>
												<th>No. of Months</th>
												<th>Average No of Children days per month</th>
												<th>Average No of CWSN Children days per month </th>
												<th>Maintenance and Others Cost @ ₹3,000 per child per month </th>
												<th>Beadding Cost @ ₹250 per child per quarter</th>
												<th>CWSN fund @ ₹4,400 per child per month</th>
												<th>Administrative cost @ ₹2,50,000 per quarter per unit</th>
												<th>CWSN Equipment @ ₹1,00,000 per unit per quarter</th>
												<th>Salary of staff @ ₹6,57,280 per quarter per unit</th>
												<th>Salary for CWSN Staff @ ₹1,43,191 per quarter per unit</th>
												<th>Total Salary</th>
												<th>Total (Recurring Cost)</th>
												<th>District Recommendation</th>
												<th>Amount to be released</th>
											</thead>
										</tbody>
										</table>
									</div>
									<div class="table-responsive tab-pane" id="tab-table2">
										<table id="saa-table" class="display table table-striped table-hover">
											<thead>
												<th>Sl. No.</th>
												<th>District</th>
												<th>Name of the CCI</th>
												<th>Run_by</th>
												<th>Unit No</th>
												<th>Category</th>
												<th>cci_gender</th>
												<th>fy_id</th>
												<th>children_days</th>
											</thead>
										</tbody>
										</table>
									</div>
									<div class="table-responsive tab-pane" id="tab-table3">
										<table id="os-table" class="display table table-striped table-hover">
											<thead>
												<th>Sl. No.</th>
												<th>District</th>
												<th>Name of the CCI</th>
												<th>Run_by</th>
												<th>Unit No</th>
												<th>Category</th>
												<th>cci_gender</th>
												<th>fy_id</th>
												<th>children_days</th>
											</thead>
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

		// Listen for Bootstrap tab change
		document.querySelectorAll('button[data-bs-toggle="tab"]').forEach((el) => {
			el.addEventListener('shown.bs.tab', () => {
				DataTable.tables({ visible: true, api: true }).columns.adjust();
			});
		});

	$(document).ready(function() {
		$('li.nav-item').each(function() {
			if (window.location.pathname.includes($(this).children('a').attr('href'))) {
				$(this).addClass('active');
			}
		});

		var home_table = $('#home-table').DataTable();
		var saa_table = $('#saa-table').DataTable();
		var os_table = $('#os-table').DataTable();
		$('#csvform').on('submit', function(e) {
			e.preventDefault();
			var formData = new FormData(this);
            $.ajax({
                url: "get_csv_data.php",
                type: "POST",
                data: formData,
				dataType: 'json',
                success: function(response){
					// if (response.homedata
					home_table.clear().rows.add(response.homedata).draw();
					saa_table.clear().rows.add(response.saadata).draw();
					os_table.clear().rows.add(response.os_data).draw();
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
	</script>
</body>
</html>