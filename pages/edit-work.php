<?php
session_start ();
if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}
include('../config/DbFunction.php');
$obj=new DbFunction();

$job_id = $_GET["jid"];
$rs_job = $obj->get_job_details($job_id);
$res_job = $rs_job->fetch_object();

$rs_dist = $obj->get_districts();
$rs_e = $obj->get_est_details($res_job->est_id, $res_job->category);
$res_e = $rs_e->fetch_row();
$rs_sts = $obj->get_wrkstatuses();


if(isset($_POST['submit'])){
	$obj->edit_work($_GET['jid'],$_POST['district'],$_POST['category'], $_POST['estname'], $_POST['finyear'], $_POST['wrkdesc'],
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

<title>Edit Work</title>

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
						<div class="panel-heading">Edit Work</div>
						<div class="panel-body">
							<div class="row">
						 	<div class="col-lg-10">
								<div class="form-group">
									<div class="col-lg-4">
					 					<label>Select District: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<select class="form-control" name="district" id="district" required >
											<option VALUE="">SELECT</option>
											<?php while($res=$rs_dist->fetch_object()){	?>
                        					<option VALUE="<?php echo htmlentities($res->district);?>" <?php if($res->district == $res_e[1]) echo "selected" ?>><?php echo htmlentities($res->district)?></option>
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
										<select class="form-control" name="estname" id="estname" required >
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
										<textarea class="form-control" rows="3" name="wrkdesc" id="wrkdesc" required><?php echo htmlentities($res_job->work_desc);?></textarea>
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
											<input name="propamnt" id="propamnt" class="form-control" required value="<?php echo htmlentities($res_job->prop_amnt);?>" >
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
										<input class="form-control" name="dcrtno" id="dcrtno" required value="<?php echo htmlentities($res_job->dcrt_file_no);?>">
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>Dept. File No.: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="deptno" id="deptno" value="<?php echo htmlentities($res_job->dept_file_no);?>" >
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">
										<label>AAFS Date: <span id="" style="font-size:11px;color:red">*</span></label>
									</div>
									<div class="col-lg-6">
										<input class="form-control" name="aafsdate" id="aafsdate" value="<?php echo ($res_job->aafs_date == NULL || $res_job->aafs_date == '') ? '' : htmlentities(date('d-m-Y', strtotime($res_job->aafs_date)));?>">
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
											<input name="aafsamnt" id="aafsamnt" class="form-control" value="<?php echo htmlentities($res_job->aafs_amnt);?>" >
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
										<input class="form-control" name="ftrdate" id="ftrdate" value="<?php echo ($res_job->first_trench_dt==''|| $res_job->first_trench_dt==NULL) ? '' : htmlentities(date('d-m-Y', strtotime($res_job->first_trench_dt)));?>" >
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
											<input name="ftramnt" id="ftramnt" class="form-control" value="<?php echo htmlentities($res_job->first_trench_amnt);?>" >
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
										<input class="form-control" name="fntrdate" id="fntrdate" value="<?php echo ($res_job->final_trench_dt == NULL || $res_job->final_trench_dt='') ? '' : htmlentities(date('d-m-Y', strtotime($res_job->final_trench_dt)));?>">
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
											<input name="fntramnt" id="fntramnt" class="form-control" value="<?php echo htmlentities($res_job->final_trench_amnt);?>">
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
										<input class="form-control" name="ucdate" id="ucdate" value="<?php echo ($res_job->uc_date == NULL || $res_job->uc_date == '') ? '' : htmlentities(date('d-m-Y', strtotime($res_job->uc_date)));?>">
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
                        					<option VALUE="<?php echo htmlentities($res->work_id);?>" <?php if($res->work_id == $res_job->work_status_id) echo "selected"?>><?php echo htmlentities($res->work_status);?></option>
											<?php }?>
										</select>
									</div>
	 							</div>
								<br><br>
								<div class="form-group">
									<div class="col-lg-4">				
									</div>
									<div class="col-lg-6"><br><br>
										<input type="submit" class="btn btn-primary" name="submit" value="Update Work"></button>
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
	function getEstList(est="") {
		var district = $("#district").find(":selected").text();
		var category = $("#category").find(":selected").text();
		if(district != "SELECT" && category != "SELECT") {
			$("#estname").attr("disabled", false); {
				listEst(district, category, est);
				$("#estname").attr("required", true);
			}
		}
		else {
			$("#estname").attr("disabled", true);
		}
	}
	
	function listEst(dist, cat, est) {
		$.ajax({
			type: "POST",
			url: "works.php",
			data:{d:dist, c:cat, e:est},
			success: function(data){
			// alert(data);
				$("#estname").html(data);
			}
		});
	}

	$(document).ready(function() {
		$("#category").val("<?php echo htmlentities($res_job->category);?>");
		getEstList("<?php echo htmlentities($res_e[2]);?>");
	});

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
		$("#finyear").val("<?php echo htmlentities($res_job->fin_year);?>")
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