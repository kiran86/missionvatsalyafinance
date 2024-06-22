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
<meta name="description" content="">
<meta name="author" content="">

<title>Upload Sub-allotment CSV</title>

<!-- Bootstrap Core CSS -->
<link href="../bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- JQuery UI -->
<link href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet">
</head>

<body>
<form method="post" >
	<div id="wrapper">
		<!-- Navigation -->
		<?php include('leftbar.php')?>;

<!--nav-->
		<div id="page-wrapper">
			<div class="row">
				<!-- /.col-lg-12 -->
			</div><br />
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Upload CSV for CCIs Sub-allotment Data Upload</div>
						<div class="panel-body">
							<div class="row">
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
										<label>Upload Sub-Allotment CSV: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" type="file" id="formFile">
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
	</div>
	<script src="../bower_components/jquery/dist/jquery.min.js"
		type="text/javascript"></script>

	
	<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../bower_components/metisMenu/dist/metisMenu.min.js"
		type="text/javascript"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js" type="text/javascript"></script>

	<!-- JQuery UI -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<script>
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