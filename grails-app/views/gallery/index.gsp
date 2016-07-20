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
					<div class="col-sm-12">
						<div class="row">
							<div class="col-lg-10"></div>
							<div class="col-lg-2">
					<g:link controller="Gallery" action="create" class="btn btn-block btn-info btn-sm">Add New Item</g:link>
					<br>
						</div>
							<table id="example3" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Type</th>
										<th>Item</th>
										<th>Desc</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<g:each in="${galleryInstanceList}" status="i"
										var="galleryInstance">
										<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
											<td><g:link action="edit" id="${galleryInstance.id}">
													${fieldValue(bean: galleryInstance, field: "type")}
												</g:link></td>
											<td><img width="100" height="100"
												src="${createLink(controller:'Gallery',action:'itemUploaded',id:galleryInstance.id)}"></td>
											<td>
												${fieldValue(bean: galleryInstance, field: "description")}
											</td>
											<td><g:link action="delete" id="${galleryInstance.id}" class="btn btn-block btn-danger btn-sm">
													Delete
												</g:link></td>
										</tr>
									</g:each>
								</tbody>
							</table>

						</div>
					</div>
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
