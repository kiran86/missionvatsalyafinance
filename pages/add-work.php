<?php
session_start ();
include('../config/DbFunction.php');
$obj=new DbFunction();
$rs_dist = $obj->get_districts();
$rs_sts = $obj->get_wrkstatuses();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

if(isset($_POST['submit'])){
	$obj->create_work($_POST['district'],$_POST['category'], $_POST['estname'], $_POST['finyear'], $_POST['wrkdesc'],
					$_POST['propamnt'], $_POST['dcrtno'], $_POST['deptno'], $_POST['aafsdate'], $_POST['aafsamnt'], $_POST['ftrdate'],
					$_POST['ftramnt'], $_POST['fntrdate'], $_POST['fntramnt'], $_POST['ucdate'], $_POST['wrkstatus']);
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

<title>Create Work</title>

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
				<div class="col-lg-12">
					<h4 class="page-header"> <?php echo strtoupper("welcome"." ".htmlentities($_SESSION['login']));?></h4>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Create New Work</div>
						<div class="panel-body">
							<div class="row">
						 	<div class="col-lg-10">
								<div class="form-group">
									<div class="col-lg-4">
					 					<label>Select District: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<select class="form-control" name="district" id="district" onchange="getEstList()" required >
											<option VALUE="">SELECT</option>
											<?php while($res=$rs_dist->fetch_object()){?>
                        					<option VALUE="<?php echo htmlentities($res->district);?>"><?php echo htmlentities($res->district)?></option>
											<?php }?>
										</select>
									</div>		
								</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Category: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
											<select class="form-control" name="category" id="category" onchange="getEstList()" required >
											<option VALUE="">SELECT</option>
											<option VALUE="cci">CCI</option>
											<option VALUE="cwc">CWC</option>
											<option VALUE="jjb">JJB</option>
											<option VALUE="dcpu">DCPU</option>
											<option VALUE="other">Other</option>
										</select>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Establishment Name: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<select class="form-control" name="estname" id="estname" required disabled>
											<option VALUE="">SELECT</option>
										</select>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Financial Year: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<select class="form-control" name="finyear" id="finyear" required>
											<option VALUE="">SELECT</option>
										</select>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Work Description: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<textarea class="form-control" rows="3" name="wrkdesc" id="wrkdesc" required></textarea>
									</div>
	 							</div>
								<br><br>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Proposed Amount: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<div class="form-group input-group">
											<span class="input-group-addon">₹</span>
											<input name="propamnt" id="propamnt" class="form-control" required>
											<span class="input-group-addon">.00</span>
										</div>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>DCRT File No.: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="dcrtno" id="dcrtno" required>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Dept. File No.: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="deptno" id="deptno" >
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>AAFS Date: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="aafsdate" id="aafsdate">
									</div>
								 </div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>AAFS Amount: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<div class="form-group input-group">
											<span class="input-group-addon">₹</span>
											<input name="aafsamnt" id="aafsamnt" class="form-control">
											<span class="input-group-addon">.00</span>
										</div>
									</div>
								 </div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>First Trench Date: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="ftrdate" id="ftrdate">
									</div>
								 </div>								 
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>First Trench Amount: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<div class="form-group input-group">
											<span class="input-group-addon">₹</span>
											<input name="ftramnt" id="ftramnt" class="form-control">
											<span class="input-group-addon">.00</span>
										</div>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Final Trench Date: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="fntrdate" id="fntrdate">
									</div>
								 </div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Final Trench Amount: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<div class="form-group input-group">
											<span class="input-group-addon">₹</span>
											<input name="fntramnt" id="fntramnt" class="form-control">
											<span class="input-group-addon">.00</span>
										</div>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>UC Date: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="ucdate" id="ucdate">
									</div>
								 </div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Work Status: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<select class="form-control" name="wrkstatus" id="wrkstatus" required="required">
											<option VALUE="">SELECT</option>
											<?php while($res=$rs_sts->fetch_object()){?>
                        					<option VALUE="<?php echo htmlentities($res->work_id);?>"><?php echo htmlentities($res->work_status);?></option>
											<?php }?>
										</select>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">				
									</div>
									<div class="col-lg-6"><br><br>
										<input type="submit" class="btn btn-primary" name="submit" value="Create Work"></button>
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
	function getEstList() {
		var district = $("#district").find(":selected").text();
		var category = $("#category").find(":selected").text();
		if(district != "SELECT" && category != "SELECT") {
			$("#estname").attr("disabled", false); {
				listEst(district, category);
				$("#estname").attr("required", true);
			}
		}
		else {
			$("#estname").attr("disabled", true);
		}
	}
	
	function listEst(dist, cat) {
		$.ajax({
			type: "POST",
			url: "works.php",
			data:{d:dist, c:cat},
			success: function(data){
			// alert(data);
				$("#estname").html(data);
			}
		});
	}
	$(window).load(function () {
		var date = new Date();
		var thisY = date.getFullYear();
		var thisM = date.getMonth();
		if(thisM > 3)
			thisY++;
		var startY = thisY - 5;
		while(startY <= thisY)
		{
			var finY = ""+startY+"-"+(++startY);
			$("#finyear").append(
				$('<option>', {
					value:finY,
					text:finY
				}));
		}
	});
	$(document).ready(function() {
		$("#aafsdate").datepicker();
	});
	$(document).ready(function() {
		$("#ftrdate").datepicker();
	});
	$(document).ready(function() {
		$("#fntrdate").datepicker();
	});
	$(document).ready(function() {
		$("#ucdate").datepicker();
	});
	</script>
</form>
</body>

</html>