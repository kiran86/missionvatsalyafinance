<?php
session_start ();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
$obj=new DbFunction();
$user = $obj->get_user($_SESSION['login']);
$rs_fy = $obj->get_fys() ;

if(isset($_POST['submit'])){
	$obj->generate_csv($_POST['fy-qtr']);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Generate Sub-allotment CSV</title>
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
				<?php include('header.php');?>
			</div>
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
								<a href="#">Generate Allotment File</a>
							</li>
						</ul>
					</div>
					<form class="needs-validation" novalidate="" method="post" >
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">CSV File Download</h4>
										<p class="card-subtitle">Download the formatted CSV file for entering CCIs sub-allotment data.</p>
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
											<div class="col-sm-3 col-form-label"></div>
											<div class="col-lg-6">
												<button type="submit" class="btn btn-primary" name="submit" value="Generate">
													<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-download" viewBox="0 0 16 16">
														<path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
														<path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708z"/>
													</svg>
													Generate
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
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
		</script>
	</div>
</body>

</html>