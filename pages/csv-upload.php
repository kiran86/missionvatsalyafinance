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
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="data-table" class="display table table-striped table-hover">
											<thead>
												<th>id</th>
												<th>district</th>
												<th>cci_name</th>
												<th>cci_run_by</th>
												<th>cci_unit_no</th>
												<th>category</th>
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

		// var table = $("#data-table").DataTable({
        //   pageLength: 5,
        //   initComplete: function () {
        //     this.api()
        //       .columns()
        //       .every(function () {
        //         var column = this;
        //         var select = $(
        //           '<select class="form-select"><option value=""></option></select>'
        //         )
        //           .appendTo($(column.footer()).empty())
        //           .on("change", function () {
        //             var val = $.fn.dataTable.util.escapeRegex($(this).val());

        //             column
        //               .search(val ? "^" + val + "$" : "", true, false)
        //               .draw();
        //           });

        //         column
        //           .data()
        //           .unique()
        //           .sort()
        //           .each(function (d, j) {
        //             select.append(
        //               '<option value="' + d + '">' + d + "</option>"
        //             );
        //           });
        //       });
        //   },
        // });

	$(document).ready(function() {
		$('li.nav-item').each(function() {
			if (window.location.pathname.includes($(this).children('a').attr('href'))) {
				$(this).addClass('active');
			}
		});
		// var data = [["CCI_1","ALIPURDUAR","ALIPURDUAR GOVT RUN SPECIALIZED ADOPTION AGENCY","Government","1","Specialized Adoption Agency","Combined","2324Q4","0"],["CCI_2","ALIPURDUAR","Khagrabari Rural Energy Development Association (KREDA)","Non-Government Organisation","1","Children Home CWSN","Male","2324Q4", "0"]];
		var table = $('#data-table').DataTable();
		$('#csvform').on('submit', function(e) {
			e.preventDefault();
			var formData = new FormData(this);
            $.ajax({
                url: "get_csv_data.php",
                type: "POST",
                data: formData,
				dataType: 'json',
                success: function(response){
					console.log(response.data);
					table.clear().rows.add(response.data).draw();
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