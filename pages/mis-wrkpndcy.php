<?php
session_start ();

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}
include('../config/DbFunction.php');
include('../config/utilityfunc.php');
$obj=new DbFunction();
$rs=$obj->show_jobs();

?> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>View Work Listing</title>
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">    
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
      
     <?php include('leftbar.php')?>;           
        <nav>
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
                        <div class="panel-heading">
                            View Work Listing
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>SNo</th>
                                            <th>District</th>
                                            <th>Name of the Establishment</th>
                                            <th>Work Description</th>
                                            <th>Proposed Amount</th>
                                            <th>AAFS Amount</th>
                                            <th>Amount Released</th>
                                            <th>Status</th>
                                            <th>UC Date</th>
                                            <th>Remarks</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                    $sn=1;
                                    while($res=$rs->fetch_object()){
                                        $est_id=$res->est_id;
                                        $est_cat=$res->category;
                                        $est_details=$obj->get_est_details($est_id, $est_cat);
                                        $res1=$est_details->fetch_array(MYSQLI_NUM);
                                        $work_id=$res->work_status_id;
                                        $work_st = $obj->get_work_status($work_id);
                                        $res2=$work_st->fetch_object();
                                        $wrkpnd_rem = $obj->get_wrkpndcyrmrks($res->job_id);
                                        $res3 = $wrkpnd_rem->fetch_object();
                                    ?>
                                    <tr class="odd gradeX">
                                        <td><?php echo $sn?></td>
                                        <td><?php echo htmlentities(strtoupper($res1[1]));?></td>
                                        <td><?php echo htmlentities(strtoupper($res1[2]));?></td>
	                                    <td><?php echo htmlentities($res->work_desc);?></td>
	                                    <td><?php echo htmlentities(numberToCurrency($res->prop_amnt));?></td>
                                        <td><?php echo htmlentities(numberToCurrency($res->aafs_amnt));?></td>
                                        <td><?php echo htmlentities(numberToCurrency($res->first_trench_amnt + $res->final_trench_amnt));?></td>
                                        <td><?php echo htmlentities(strtoupper($res2->work_status));?></td>
                                        <td><?php echo htmlentities(($res->uc_date != NULL) ? date_format(date_create($res->uc_date), "d-m-Y") : "");?></td>
                                        <td>
                                        <div class="panel panel-default">
                                            <textarea class="form-control" rows="2" name="<?php echo $res->job_id; ?>" disabled><?php echo (isset($res3->remarks) ? htmlentities($res3->remarks) : ""); ?></textarea>
                                            &nbsp;<a onclick="editRemarks(<?php echo $sn ?>)"><p class="fa fa-edit"></p></a>
                                            &nbsp;<a onclick="updateRemarks(<?php echo $sn; ?>)"><p class="fa fa-check"></p>
                                            &nbsp;<a onclick="cancelRemarks(<?php echo $sn ?>)"><p class="fa fa-times-circle"></p>
                                        </div>
                                        </td>
                                    </tr>    
                                    <?php $sn++;}?>   	           
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    var txtRemarks = "";
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });

    function editRemarks(n) {
        var txtbx = document.getElementsByTagName("textarea");
        txtRemarks = txtbx[n-1].value;
        txtbx[n-1].disabled = false;
    }
    
    function updateRemarks(n) {
        var txtbx = document.getElementsByTagName("textarea");
        var work_id = txtbx[n-1].name;
        var remarks = txtbx[n-1].value;
        if (txtbx[n-1].disabled != true) {
          $.ajax({
            type: "POST",
            url: "remarks.php",
            data:{id:work_id, rem:remarks},
            success: function(data){
              alert(data);
            }
          });
          txtbx[n-1].disabled = true;
        }
    }

    function cancelRemarks(n) {
        var txtbx = document.getElementsByTagName("textarea");
        if (txtbx[n-1].disabled != true) {
          txtbx[n-1].value = txtRemarks;
          txtbx[n-1].disabled = true;
        }
    }
    </script>
</body>
</html>