<div class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary" style="width: 280px;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
      <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="../assets/icons.svg#home"/></svg>
      <span class="fs-4">Menu</span>
    </a>
    <hr>
        <ul class="nav nav-pills flex-column mb-auto" id="side-menu">
            <li class="nav-item">
                <a href="view.php" class="nav-link active" aria-current="page">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="../assets/icons.svg#speedometer2"/></svg>
                    Dashboard
                </a>
            </li>
            <?php if (isset ( $_SESSION ['login'] )  && ($_SESSION['login'] == 1)) { ?>
            <li class="nav-item">
                <a href="csv-generate.php" class="nav-link link-body-emphasis">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="../assets/icons.svg#file-download"/></svg>
                    Generate Allotment File
                </a>
            </li>
            <li class="nav-item">
                <a href="csv-upload.php" class="nav-link link-body-emphasis">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="../assets/icons.svg#file-upload"/></svg>
                    Upload Allotment File
                </a>
            </li>
            <?php } ?>
            <li class="nav-item">
                <a href="#" class="nav-link link-body-emphasis">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="../assets/icons.svg#table"/></svg>
                    Sub-allotment Status
                </a>
            </li>
            <li class="nav-item">
                <a href="logout.php" class="nav-link link-body-emphasis">
                    <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="../assets/icons.svg#box-arrow-in-left"/></svg>
                    Logout
                </a>
            </li>
        </ul>
</div>