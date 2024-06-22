<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../index.php">Mission Vatsalya Finance Management</a>
			</div>
			<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="view.php"><i class="fa fa-bar-chart-o fa-fw"></i>Dashboard<span class="fa arrow"></span></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Sub-allotment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <?php if (isset ( $_SESSION ['login'] )  && ($_SESSION['login'] == 1)) { ?>
                                <li>
                                    <a href="csv-generate.php">Generate File</a>
                                </li>
                                <li>
                                    <a href="csv-upload.php">Upload File</a>
                                </li>
                                <?php } ?>
                                <li>
                                    <a href="#">Sub-allotment Status</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Establishment Bodies<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="./view-est.php?est=cci">CCI</a>
                                </li>
                                <li>
                                    <a href="./view-est.php?est=cwc">CWC</a>
                                </li>
                                <li>
                                    <a href="./view-est.php?est=jjb">JJB</a>
                                </li>
                                <li>
                                    <a href="./view-est.php?est=dcpu">DCPU</a>
                                </li>
                                <li>
                                    <a href="./view-est.php?est=other">Others</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Reports<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="mis-wrksts.php">District wise Job Status</a>
                                </li>
                                <li>
                                    <a href="mis-wrkpndcy.php">Work Pendency Status</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="logout.php"><i class="fa fa-bar-chart-o fa-fw"></i>Logout<span class="fa arrow"></span></a>
                        </li>
                  </ul>      				  
                </div>
               
            </div>
            
        </nav>