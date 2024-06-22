<?php 
session_start();
include('../config/DbFunction.php');
$obj=new DbFunction();
$rs=$obj->get_login();
if(isset($_POST['submit'])){
	 $_SESSION['login']=$_POST['id'];
	 $obj->login($_POST['id'],$_POST['password']);
}
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mission Vatsalya Finance Management : Login </title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
 <h2 align="center">Mission Vatsalya Finance Management</h2>
    <div class="container">
        <br><br><br><br>
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                     <h3 class="panel-title">Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post">
                            <fieldset>
                                <div class="form-group">
                                    <select class="form-control" placeholder="Login Id"  id="id" name="id" autofocus >
                                        <option VALUE="" selected>Select User</option>
                                        <?php while($res=$rs->fetch_object()){?>
                                        <option VALUE="<?php echo htmlentities($res->id);?>"><?php echo htmlentities($res->user_type);?></option>
                                        <?php }?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" id="password"name="password" type="password" value="">
                                </div>
                                <input type="submit" value="login" name="submit" class="btn btn-lg btn-success btn-block">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <script type="text/javascript">
        jQuery(function(){
            jQuery("#id").validate({
                expression: "if (VAL.match(/^[a-z]$/)) return true; else return false;",
                message: "Should be a valid id"
            });
            jQuery("#password").validate({
                expression: "if (VAL.match(/^[a-z][0-9]$/)) return true; else return false;",
                message: "Should be a valid password"
            });
            
        });     
        </script>
</body>
</html>