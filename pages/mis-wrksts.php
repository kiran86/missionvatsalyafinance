<?php
session_start ();

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}
include('../config/DbFunction.php');
$obj=new DbFunction();
$rs_sts=$obj->get_wrkstatuses();
$wrkid = array();
$rs_dist = $obj->get_districts();
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
                                            <?php while($res=$rs_sts->fetch_object()) {
                                                $wrkid[]= $res->work_id;
                                            ?>
                                            <th><?php echo htmlentities($res->work_status); ?></th>
                                            <?php } ?>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    $sn=1;
                                    while($res=$rs_dist->fetch_object()){
                                    ?>
                                    <tr class="odd gradeX">
                                        <td><?php echo $sn?></td>
                                        <td><?php echo htmlentities(strtoupper($res->district));?></td>
	                                    <?php
                                        $rs_mis = $obj->mis_wrkstscount($res->district);
                                        $res1 = $rs_mis->fetch_object();
                                        $wrk_t = 0;
                                        foreach($wrkid as $id) {
                                            
                                            if($res1!=NULL && $id == $res1->work_status_id) {
                                        ?>
                                        <td><?php echo htmlentities($res1->count);?></td>
                                        <?php
                                                $wrk_t = $wrk_t + $res1->count;
                                                $res1 = $rs_mis->fetch_object();
                                        } else { ?>
                                        <td>0</td>
                                        <?php }} ?>
                                        <td><b><?php echo htmlentities($wrk_t) ?></td>
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
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
</body>
</html>