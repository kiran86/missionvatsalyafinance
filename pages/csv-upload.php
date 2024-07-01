<?php
session_start ();

if (!(isset( $_SESSION ['login']))) {
	header ( 'location:../index.php' );
}

include('../config/DbFunction.php');
$obj=new DbFunction();
$rs_fy = $obj->get_fys() ;

if(isset($_POST['submit'])){
	//$uploaddir = "/opt/lampp/htdocs/csv/";
	$uploaddir = "../csv/";
	$uploadfile = $uploaddir . basename($_FILES['csvfile']['name']);

	if(isset($_FILES["csvfile"]) && $_FILES["csvfile"]["error"] === UPLOAD_ERR_OK) {
		if(move_uploaded_file($_FILES["csvfile"]["tmp_name"], $uploadfile)) {
			echo '<script>alert( "File uploaded!" );</script>';
			chmod($uploadfile, 0777);
		} else {
			echo '<script>alert( "There was an error occured during upload!" );</script>';
		}
	} else { 
        echo '<script>alert("Error: "'. $_FILES["csvfile"]["error"] .'");</script>'; 
    }

	$csv_data = file($uploadfile);
	$data = [];
	foreach ($csv_data as $key => $value) {
        $row = str_getcsv($value);
        $data[$key] = $row;
    }
	print_r($data);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>Upload Sub-allotment CSV</title>
	<!-- Fonts and icons -->
	<script src="../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Public Sans:300,400,500,600,700"] },
        custom: {
          families: [
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["../assets/css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins.min.css" />
    <link rel="stylesheet" href="../assets/css/kaiadmin.min.css" />
</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<?php include('sidebar.php');?>
		<div class="main-panel">
			<div class="main-header"></div>
			<div class="container">
				<div class="page-inner">
					<div class="page-header">
						<ul class="breadcrumbs mb-3">
							<li class="nav-home">
								<a href="view.php">
									<i class="icon-home"></i>
								</a>
							</li>
							<li class="separator">
								<i class="icon-arrow-right"></i>
							</li>
							<li class="nav-item">
								<a href="#">Upload Allotment File</a>
							</li>
						</ul>
					</div>
					<form class="needs-validation" novalidate="" method="post" enctype="multipart/form-data">
					<div class="row">
						<!-- /.row -->
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">CSV File Upload</h4>
									<p class="card-subtitle">Upload the CSV file containing CCIs sub-allotment data.</p>
								</div>
								<div class="card-body">
									<div class="row mb-3">
										<label for="fy" class="col-sm-2 col-form-label">Select Financial Year: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<select class="form-control" name="fy" id="fy" onchange="get_quarter()" required >
												<option VALUE="">SELECT</option>
												<?php while($res=$rs_fy->fetch_object()){?>
												<option VALUE="<?php echo htmlentities($res->fy);?>"><?php echo htmlentities($res->fy)?></option>
												<?php }?>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<label for="fy-qtr" class="col-sm-2 col-form-label">Financial Quarter: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<select class="form-control" name="fy-qtr" id="fy-qtr" required disabled>
												<option VALUE="">SELECT</option>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<label for="formFile" class="col-sm-2 col-form-label">Upload Sub-Allotment CSV: <span id="" style="font-size:11px;color:red">*</span></label>
										<div class="col-lg-6">
											<input class="form-control" type="file" accept=".csv" name="csvfile" id="csvfile" required>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-sm-2 col-form-label"></div>
										<div class="col-lg-6">
											<button type="submit" class="btn btn-primary" name="submit" value="Upload">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-upload" viewBox="0 0 16 16">
													<path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
													<path d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708z"/>
												</svg>
												Upload
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</form>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Sub Allotment Data</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="multi-filter-select" class="display table table-striped table-hover">
										<thead>
											<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
											</tr>
										</tfoot>
										<tbody>
											<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
											</tr>
											<tr>
											<td>Garrett Winters</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
											</tr>
											<tr>
											<td>Ashton Cox</td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
											</tr>
											<tr>
											<td>Cedric Kelly</td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
											</tr>
											<tr>
											<td>Airi Satou</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
											</tr>
											<tr>
											<td>Brielle Williamson</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>61</td>
											<td>2012/12/02</td>
											<td>$372,000</td>
											</tr>
											<tr>
											<td>Herrod Chandler</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>59</td>
											<td>2012/08/06</td>
											<td>$137,500</td>
											</tr>
											<tr>
											<td>Rhona Davidson</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>55</td>
											<td>2010/10/14</td>
											<td>$327,900</td>
											</tr>
											<tr>
											<td>Colleen Hurst</td>
											<td>Javascript Developer</td>
											<td>San Francisco</td>
											<td>39</td>
											<td>2009/09/15</td>
											<td>$205,500</td>
											</tr>
											<tr>
											<td>Sonya Frost</td>
											<td>Software Engineer</td>
											<td>Edinburgh</td>
											<td>23</td>
											<td>2008/12/13</td>
											<td>$103,600</td>
											</tr>
											<tr>
											<td>Jena Gaines</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>30</td>
											<td>2008/12/19</td>
											<td>$90,560</td>
											</tr>
											<tr>
											<td>Quinn Flynn</td>
											<td>Support Lead</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2013/03/03</td>
											<td>$342,000</td>
											</tr>
											<tr>
											<td>Charde Marshall</td>
											<td>Regional Director</td>
											<td>San Francisco</td>
											<td>36</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
											</tr>
											<tr>
											<td>Haley Kennedy</td>
											<td>Senior Marketing Designer</td>
											<td>London</td>
											<td>43</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
											</tr>
											<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>19</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
											</tr>
											<tr>
											<td>Michael Silva</td>
											<td>Marketing Designer</td>
											<td>London</td>
											<td>66</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
											</tr>
											<tr>
											<td>Paul Byrd</td>
											<td>Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
											</tr>
											<tr>
											<td>Gloria Little</td>
											<td>Systems Administrator</td>
											<td>New York</td>
											<td>59</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
											</tr>
											<tr>
											<td>Bradley Greer</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>41</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
											</tr>
											<tr>
											<td>Dai Rios</td>
											<td>Personnel Lead</td>
											<td>Edinburgh</td>
											<td>35</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
											</tr>
											<tr>
											<td>Jenette Caldwell</td>
											<td>Development Lead</td>
											<td>New York</td>
											<td>30</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
											</tr>
											<tr>
											<td>Yuri Berry</td>
											<td>Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
											</tr>
											<tr>
											<td>Caesar Vance</td>
											<td>Pre-Sales Support</td>
											<td>New York</td>
											<td>21</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
											</tr>
											<tr>
											<td>Doris Wilder</td>
											<td>Sales Assistant</td>
											<td>Sidney</td>
											<td>23</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
											</tr>
											<tr>
											<td>Angelica Ramos</td>
											<td>Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
											</tr>
											<tr>
											<td>Gavin Joyce</td>
											<td>Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
											</tr>
											<tr>
											<td>Jennifer Chang</td>
											<td>Regional Director</td>
											<td>Singapore</td>
											<td>28</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
											</tr>
											<tr>
											<td>Brenden Wagner</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>28</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
											</tr>
											<tr>
											<td>Fiona Green</td>
											<td>Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
											</tr>
											<tr>
											<td>Shou Itou</td>
											<td>Regional Marketing</td>
											<td>Tokyo</td>
											<td>20</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
											</tr>
											<tr>
											<td>Michelle House</td>
											<td>Integration Specialist</td>
											<td>Sidney</td>
											<td>37</td>
											<td>2011/06/02</td>
											<td>$95,400</td>
											</tr>
											<tr>
											<td>Suki Burks</td>
											<td>Developer</td>
											<td>London</td>
											<td>53</td>
											<td>2009/10/22</td>
											<td>$114,500</td>
											</tr>
											<tr>
											<td>Prescott Bartlett</td>
											<td>Technical Author</td>
											<td>London</td>
											<td>27</td>
											<td>2011/05/07</td>
											<td>$145,000</td>
											</tr>
											<tr>
											<td>Gavin Cortez</td>
											<td>Team Leader</td>
											<td>San Francisco</td>
											<td>22</td>
											<td>2008/10/26</td>
											<td>$235,500</td>
											</tr>
											<tr>
											<td>Martena Mccray</td>
											<td>Post-Sales support</td>
											<td>Edinburgh</td>
											<td>46</td>
											<td>2011/03/09</td>
											<td>$324,050</td>
											</tr>
											<tr>
											<td>Unity Butler</td>
											<td>Marketing Designer</td>
											<td>San Francisco</td>
											<td>47</td>
											<td>2009/12/09</td>
											<td>$85,675</td>
											</tr>
											<tr>
											<td>Howard Hatfield</td>
											<td>Office Manager</td>
											<td>San Francisco</td>
											<td>51</td>
											<td>2008/12/16</td>
											<td>$164,500</td>
											</tr>
											<tr>
											<td>Hope Fuentes</td>
											<td>Secretary</td>
											<td>San Francisco</td>
											<td>41</td>
											<td>2010/02/12</td>
											<td>$109,850</td>
											</tr>
											<tr>
											<td>Vivian Harrell</td>
											<td>Financial Controller</td>
											<td>San Francisco</td>
											<td>62</td>
											<td>2009/02/14</td>
											<td>$452,500</td>
											</tr>
											<tr>
											<td>Timothy Mooney</td>
											<td>Office Manager</td>
											<td>London</td>
											<td>37</td>
											<td>2008/12/11</td>
											<td>$136,200</td>
											</tr>
											<tr>
											<td>Jackson Bradshaw</td>
											<td>Director</td>
											<td>New York</td>
											<td>65</td>
											<td>2008/09/26</td>
											<td>$645,750</td>
											</tr>
											<tr>
											<td>Olivia Liang</td>
											<td>Support Engineer</td>
											<td>Singapore</td>
											<td>64</td>
											<td>2011/02/03</td>
											<td>$234,500</td>
											</tr>
											<tr>
											<td>Bruno Nash</td>
											<td>Software Engineer</td>
											<td>London</td>
											<td>38</td>
											<td>2011/05/03</td>
											<td>$163,500</td>
											</tr>
											<tr>
											<td>Sakura Yamamoto</td>
											<td>Support Engineer</td>
											<td>Tokyo</td>
											<td>37</td>
											<td>2009/08/19</td>
											<td>$139,575</td>
											</tr>
											<tr>
											<td>Thor Walton</td>
											<td>Developer</td>
											<td>New York</td>
											<td>61</td>
											<td>2013/08/11</td>
											<td>$98,540</td>
											</tr>
											<tr>
											<td>Finn Camacho</td>
											<td>Support Engineer</td>
											<td>San Francisco</td>
											<td>47</td>
											<td>2009/07/07</td>
											<td>$87,500</td>
											</tr>
											<tr>
											<td>Serge Baldwin</td>
											<td>Data Coordinator</td>
											<td>Singapore</td>
											<td>64</td>
											<td>2012/04/09</td>
											<td>$138,575</td>
											</tr>
											<tr>
											<td>Zenaida Frank</td>
											<td>Software Engineer</td>
											<td>New York</td>
											<td>63</td>
											<td>2010/01/04</td>
											<td>$125,250</td>
											</tr>
											<tr>
											<td>Zorita Serrano</td>
											<td>Software Engineer</td>
											<td>San Francisco</td>
											<td>56</td>
											<td>2012/06/01</td>
											<td>$115,000</td>
											</tr>
											<tr>
											<td>Jennifer Acosta</td>
											<td>Junior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>43</td>
											<td>2013/02/01</td>
											<td>$75,650</td>
											</tr>
											<tr>
											<td>Cara Stevens</td>
											<td>Sales Assistant</td>
											<td>New York</td>
											<td>46</td>
											<td>2011/12/06</td>
											<td>$145,600</td>
											</tr>
											<tr>
											<td>Hermione Butler</td>
											<td>Regional Director</td>
											<td>London</td>
											<td>47</td>
											<td>2011/03/21</td>
											<td>$356,250</td>
											</tr>
											<tr>
											<td>Lael Greer</td>
											<td>Systems Administrator</td>
											<td>London</td>
											<td>21</td>
											<td>2009/02/27</td>
											<td>$103,500</td>
											</tr>
											<tr>
											<td>Jonas Alexander</td>
											<td>Developer</td>
											<td>San Francisco</td>
											<td>30</td>
											<td>2010/07/14</td>
											<td>$86,500</td>
											</tr>
											<tr>
											<td>Shad Decker</td>
											<td>Regional Director</td>
											<td>Edinburgh</td>
											<td>51</td>
											<td>2008/11/13</td>
											<td>$183,000</td>
											</tr>
											<tr>
											<td>Michael Bruce</td>
											<td>Javascript Developer</td>
											<td>Singapore</td>
											<td>29</td>
											<td>2011/06/27</td>
											<td>$183,000</td>
											</tr>
											<tr>
											<td>Donna Snider</td>
											<td>Customer Support</td>
											<td>New York</td>
											<td>27</td>
											<td>2011/01/25</td>
											<td>$112,000</td>
											</tr>
										</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery-3.7.1.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

	<!-- Chart JS -->
	<script src="../assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script src="../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<script src="../assets/js/plugin/chart-circle/circles.min.js"></script>

	<!-- Datatables -->
	<script src="../assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

	<!-- jQuery Vector Maps -->
	<script src="../assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
	<script src="../assets/js/plugin/jsvectormap/world.js"></script>

	<!-- Sweet Alert -->
	<script src="../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Kaiadmin JS -->
	<script src="../assets/js/kaiadmin.min.js"></script>
	<script>
		$(document).ready(function() {
			$('li.nav-item').each(function() {
				if (window.location.pathname.includes($(this).children('a').attr('href'))) {
					$(this).addClass('active');
				}
			});
		});

		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(() => {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			const forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.from(forms).forEach(form => {
				form.addEventListener('submit', event => {
				if (!form.checkValidity()) {
					event.preventDefault()
					event.stopPropagation()
				}

				form.classList.add('was-validated')
				}, false)
			})
		})()

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

        $("#multi-filter-select").DataTable({
          pageLength: 5,
          initComplete: function () {
            this.api()
              .columns()
              .every(function () {
                var column = this;
                var select = $(
                  '<select class="form-select"><option value=""></option></select>'
                )
                  .appendTo($(column.footer()).empty())
                  .on("change", function () {
                    var val = $.fn.dataTable.util.escapeRegex($(this).val());

                    column
                      .search(val ? "^" + val + "$" : "", true, false)
                      .draw();
                  });

                column
                  .data()
                  .unique()
                  .sort()
                  .each(function (d, j) {
                    select.append(
                      '<option value="' + d + '">' + d + "</option>"
                    );
                  });
              });
          },
        });

	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	'use strict'

	// Fetch all the forms we want to apply custom Bootstrap validation styles to
	const forms = document.querySelectorAll('.needs-validation')

	// Loop over them and prevent submission
	Array.from(forms).forEach(form => {
		form.addEventListener('submit', event => {
		if (!form.checkValidity()) {
			event.preventDefault()
			event.stopPropagation()
		}

		form.classList.add('was-validated')
		}, false)
	})
	})()
	</script>
</body>
</html>