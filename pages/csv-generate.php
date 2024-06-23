<?php
session_start ();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
$obj=new DbFunction();
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
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Generate Sub-allotment CSV</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="../css/sidebars.css" rel="stylesheet">
</head>

<body>
<form class="needs-validation" novalidate="" method="post" >
	<main class="main" id="top">
        <div class="container-fluid">
            <div class="row flex-nowrap">
				<?php include('leftbar.php');?>
				<div class="content">
					<div class="mt-4">
						<div class="row g-4">
							<div class="col-12 col-xl-10 order-1 order-xl-0">
							<div class="mb-9">
								<div class="card shadow-none border my-4" data-component-card="data-component-card">
								<div class="card-header p-4 border-bottom bg-body">
									<div class="row g-3 justify-content-between align-items-center">
									<div class="col-12 col-md">
										<h4 class="text-body mb-0" data-anchor="data-anchor">Generate CSV for CCIs Sub-allotment Data Upload</h4>
									</div>
									</div>
								</div>
								</div>
							</div>
							</div>
						</div>
						<div class="row g-3">
						<div class="col-lg-10">
							<div class="form-group">
								<div class="col-lg-4">
									<label>Select Financial Year: <span id="" style="font-size:11px;color:red">*</span></label>
								</div>
								<div class="col-lg-6">
									<select class="form-control" name="fy" id="fy" onchange="get_quarter()" required >
										<option VALUE="">SELECT</option>
										<?php while($res=$rs_fy->fetch_object()){?>
										<option VALUE="<?php echo htmlentities($res->fy);?>"><?php echo htmlentities($res->fy)?></option>
										<?php }?>
									</select>
								</div>		
							</div>
							<br><br>
							<div class="form-group">
								<div class="col-lg-4">
									<label>Financial Quarter: <span id="" style="font-size:11px;color:red">*</span></label>
								</div>
								<div class="col-lg-6">
									<select class="form-control" name="fy-qtr" id="fy-qtr" required disabled>
										<option VALUE="">SELECT</option>
									</select>
								</div>
							</div>
							<br><br>
							<div class="form-group">
								<div class="col-lg-4">				
								</div>
								<div class="col-lg-6">
									<input type="submit" class="btn btn-primary" name="submit" value="Generate"></button>
								</div>
							</div>		
						</div>
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