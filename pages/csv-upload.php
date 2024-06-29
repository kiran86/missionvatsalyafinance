<?php
session_start ();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
$obj=new DbFunction();
$rs_fy = $obj->get_fys() ;

if(isset($_POST['submit'])){
	//$obj->generate_csv($_POST['fy-qtr']);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Upload Sub-allotment CSV</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../css/sidebars.css" rel="stylesheet">
</head>

<body>
<form class="needs-validation" novalidate="" method="post" >
	<main class="main" id="top">
	<div class="container-fluid">
		<div class="row flex-nowrap">
		<!-- Navigation -->
		<?php include('leftbar.php');?>
		<div class="content">
			<div class="mt-4">
				<!-- /.row -->
				<div class="row g-4">
					<div class="col-12 col-xl-10 order-1 order-xl-0">
					<div class="mb-9">
						<div class="card shadow-none border my-4" data-component-card="data-component-card">
						<div class="card-header p-4 border-bottom bg-body">
							<div class="row g-3 justify-content-between align-items-center">
							<div class="col-12 col-md">
								<h4 class="text-body mb-0" data-anchor="data-anchor">Upload CSV for CCIs Sub-allotment Data Upload</h4>
							</div>
							</div>
						</div>
						</div>
					</div>
					</div>
				</div>
				
				<div class="row mb-3">
					<label for="fy" class="col-sm-2 col-form-label">Select Financial Year: <span id="" style="font-size:11px;color:red">*</span></label>
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
					<label for="fy-qtr" class="col-sm-2 col-form-label">Financial Quarter: <span id="" style="font-size:11px;color:red">*</span></label>
					<div class="col-lg-6">
						<select class="form-control" name="fy-qtr" id="fy-qtr" required disabled>
							<option VALUE="">SELECT</option>
						</select>
					</div>
				</div>
				<div class="row mb-3">
					<label for="formFile" class="col-sm-2 col-form-label">Upload Sub-Allotment CSV: <span id="" style="font-size:11px;color:red">*</span></label>
					<div class="col-lg-6">
						<input class="form-control" type="file" id="formFile" required>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-sm-2 col-form-label"></div>
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
	</main>
	<!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/sidebars.js"></script></body>

	<!-- JQuery UI -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script>
	$(document).ready(function() {
		$('#side-menu a').each(function() {
			if (this.href == window.location.href) {
				$(this).removeClass('link-body-emphasis');
				$(this).addClass('active').attr('aria-current', 'page');
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
</form>
</body>

</html>