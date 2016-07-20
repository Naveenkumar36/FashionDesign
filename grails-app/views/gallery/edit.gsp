<!DOCTYPE html>
<html>
<g:render template="/layouts/head" />
<g:render template="/layouts/header" />
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>About Fashion Street</h1>
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
						<%--
          <li><a href="#">Layout</a></li>
          <li class="active">Top Navigation</li>
        --%>
					</ol>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="box box-formhead box-solid">
							<div class="box-header">
								<h3 class="box-title">Gallery</h3>
							</div>
							<g:form role="form"
								url="[resource:galleryInstance, action:'save']"
								enctype="multipart/form-data">
								<div class="box-footer"></div>
								<fieldset class="form">
									<g:render template="form" />
								</fieldset>
								<fieldset class="buttons">
									<div class="box-footer">
										<div class="col-lg-4"></div>
										<div class="col-lg-6">
											<h5 style="color: #3C80BC; font-weight: bold;">Creating
												New Records</h5>
										</div>
										<div class="row"></div>
										<div class="col-lg-5"></div>
										<g:submitButton name="Submit" class="btn btn-primary btn-sm" />
										<g:link action="index" controller="gallery"
											class="btn btn-primary btn-sm">Cancel</g:link>
									</div>
								</fieldset>
							</g:form>
						</div>
					</div>
					<!-- /.box -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="container">
				<strong>Copyright &copy; 2014-2016 <a href="#">Fashion
						Design</a>.
				</strong> All rights reserved.
			</div>
			<!-- /.container -->
		</footer>
	</div>
	<!-- ./wrapper -->
</body>
</html>
