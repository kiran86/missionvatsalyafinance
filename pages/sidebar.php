<!-- Sidebar -->
<div class="sidebar sidebar-style-2" data-background-color="dark">
    <div class="sidebar-logo">
        <!-- Logo Header -->
        <div class="logo-header" data-background-color="dark">
        <a href="../index.php" class="logo">
            <svg width="40" height="40" xmlns="http://www.w3.org/2000/svg">
                <rect width="40" height="40" fill="lightblue"/>
                <text x="4" y="28" font-family="Consolas" font-size="20" fill="black">MV</text>
            </svg>
            <p class="h6 navbar-brand text-light fw-bold px-sm-2 pt-2">Fund Management</p>
        </a>
        <div class="nav-toggle">
            <button class="btn btn-toggle toggle-sidebar">
            <i class="gg-menu-right"></i>
            </button>
            <button class="btn btn-toggle sidenav-toggler">
            <i class="gg-menu-left"></i>
            </button>
        </div>
        <button class="topbar-toggler more">
            <i class="gg-more-vertical-alt"></i>
        </button>
        </div>
        <!-- End Logo Header -->
    </div>
    <div class="sidebar-wrapper scrollbar scrollbar-inner">
        <div class="sidebar-content">
        <ul class="nav nav-secondary" id="side-menu">
            <li class="nav-item">
                <a href="view.php" class="">
                    <i class="fas fa-home"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <?php if (isset ( $_SESSION ['login'] )  && ($_SESSION['login'] == 1)) { ?>
            <li class="nav-item">
                <a href="csv-generate.php" class="">
                    <i class="fas fa-file-download"></i>
                    Generate Allotment File
                </a>
            </li>
            <li class="nav-item">
                <a href="csv-upload.php" class="">
                    <i class="fas fa-file-upload"></i>
                    Upload Allotment File
                </a>
            </li>
            <?php } ?>
            <li class="nav-item">
                <a href="#" class="">
                    <i class="far fa-list-alt"></i>
                    Sub-allotment Status
                </a>
            </li>
            <li class="nav-item">
                <a href="logout.php" class="nav-link link-body-emphasis">
                    <i class="fas fa-sign-out-alt"></i>
                    Logout
                </a>
            </li>
            <li class="nav-section">
            <span class="sidebar-mini-icon">
                <i class="fa fa-ellipsis-h"></i>
            </span>
            <h4 class="text-section">Components</h4>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#base">
                <i class="fas fa-layer-group"></i>
                <p>Base</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="base">
                <ul class="nav nav-collapse">
                <li>
                    <a href="components/avatars.html">
                    <span class="sub-item">Avatars</span>
                    </a>
                </li>
                <li>
                    <a href="components/buttons.html">
                    <span class="sub-item">Buttons</span>
                    </a>
                </li>
                <li>
                    <a href="components/gridsystem.html">
                    <span class="sub-item">Grid System</span>
                    </a>
                </li>
                <li>
                    <a href="components/panels.html">
                    <span class="sub-item">Panels</span>
                    </a>
                </li>
                <li>
                    <a href="components/notifications.html">
                    <span class="sub-item">Notifications</span>
                    </a>
                </li>
                <li>
                    <a href="components/sweetalert.html">
                    <span class="sub-item">Sweet Alert</span>
                    </a>
                </li>
                <li>
                    <a href="components/font-awesome-icons.html">
                    <span class="sub-item">Font Awesome Icons</span>
                    </a>
                </li>
                <li>
                    <a href="components/simple-line-icons.html">
                    <span class="sub-item">Simple Line Icons</span>
                    </a>
                </li>
                <li>
                    <a href="components/typography.html">
                    <span class="sub-item">Typography</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#sidebarLayouts">
                <i class="fas fa-th-list"></i>
                <p>Sidebar Layouts</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="sidebarLayouts">
                <ul class="nav nav-collapse">
                <li>
                    <a href="sidebar-style-2.html">
                    <span class="sub-item">Sidebar Style 2</span>
                    </a>
                </li>
                <li>
                    <a href="icon-menu.html">
                    <span class="sub-item">Icon Menu</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#forms">
                <i class="fas fa-pen-square"></i>
                <p>Forms</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="forms">
                <ul class="nav nav-collapse">
                <li>
                    <a href="forms/forms.html">
                    <span class="sub-item">Basic Form</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#tables">
                <i class="fas fa-table"></i>
                <p>Tables</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="tables">
                <ul class="nav nav-collapse">
                <li>
                    <a href="tables/tables.html">
                    <span class="sub-item">Basic Table</span>
                    </a>
                </li>
                <li>
                    <a href="tables/datatables.html">
                    <span class="sub-item">Datatables</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#maps">
                <i class="fas fa-map-marker-alt"></i>
                <p>Maps</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="maps">
                <ul class="nav nav-collapse">
                <li>
                    <a href="maps/googlemaps.html">
                    <span class="sub-item">Google Maps</span>
                    </a>
                </li>
                <li>
                    <a href="maps/jsvectormap.html">
                    <span class="sub-item">Jsvectormap</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#charts">
                <i class="far fa-chart-bar"></i>
                <p>Charts</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="charts">
                <ul class="nav nav-collapse">
                <li>
                    <a href="charts/charts.html">
                    <span class="sub-item">Chart Js</span>
                    </a>
                </li>
                <li>
                    <a href="charts/sparkline.html">
                    <span class="sub-item">Sparkline</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
            <li class="nav-item">
            <a href="widgets.html">
                <i class="fas fa-desktop"></i>
                <p>Widgets</p>
                <span class="badge badge-success">4</span>
            </a>
            </li>
            <li class="nav-item">
            <a data-bs-toggle="collapse" href="#submenu">
                <i class="fas fa-bars"></i>
                <p>Menu Levels</p>
                <span class="caret"></span>
            </a>
            <div class="collapse" id="submenu">
                <ul class="nav nav-collapse">
                <li>
                    <a data-bs-toggle="collapse" href="#subnav1">
                    <span class="sub-item">Level 1</span>
                    <span class="caret"></span>
                    </a>
                    <div class="collapse" id="subnav1">
                    <ul class="nav nav-collapse subnav">
                        <li>
                        <a href="#">
                            <span class="sub-item">Level 2</span>
                        </a>
                        </li>
                        <li>
                        <a href="#">
                            <span class="sub-item">Level 2</span>
                        </a>
                        </li>
                    </ul>
                    </div>
                </li>
                <li>
                    <a data-bs-toggle="collapse" href="#subnav2">
                    <span class="sub-item">Level 1</span>
                    <span class="caret"></span>
                    </a>
                    <div class="collapse" id="subnav2">
                    <ul class="nav nav-collapse subnav">
                        <li>
                        <a href="#">
                            <span class="sub-item">Level 2</span>
                        </a>
                        </li>
                    </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                    <span class="sub-item">Level 1</span>
                    </a>
                </li>
                </ul>
            </div>
            </li>
        </ul>
        </div>
    </div>
</div>
<!-- End Sidebar -->