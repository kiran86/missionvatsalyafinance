<?php
session_start ();

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}
include('../config/DbFunction.php');
include('../config/utilityfunc.php');
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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/sidebars.css" rel="stylesheet">
    
</head>

<body>
    <main class="main" id="top">
        <div class="container-fluid">
            <div class="row flex-nowrap">
                <?php include('leftbar.php');?>
                <div class="col">
                    <h2>Dashboard</h2>
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
    </script>
</body>
</html>