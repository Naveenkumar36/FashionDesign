<!DOCTYPE html>
<html>
<g:render template="/layouts/head" />
<g:render template="/layouts/header" />
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->

<script type="text/javascript">
	$(document).on("click", ".test", function() {
		var itemInfo = $(this).val();
		$(".modal-body #bookId").val(itemInfo);
		// As pointed out in comments, 
		// it is superfluous to have to manually call the modal.
		// $('#addBookDialog').modal('show');
	});
</script>
<body class="hold-transition skin-blue layout-top-nav ">

	<div class="wrapper">
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>GALLERY</h1>
					<ol class="breadcrumb">
						<li><a href="${request.getContextPath()}/user/dashboard"><i
								class="fa fa-dashboard"></i> Home</a></li>
					</ol>









				</section>
				<br> <br>
				<div class="col-md-12">
					<!-- USERS LIST -->
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">Latest Design</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body no-padding">
							<ul class="users-list clearfix">
								<g:each in="${galleryInstanceList}" status="i"
									var="galleryInstance">
									<li><img width="150" height="100"
										src="${createLink(controller:'Gallery',action:'itemUploaded',id:galleryInstance.id)}"
										alt="User Image"> <a class="users-list-name" href="#">
											${galleryInstance.description} Pierce
									</a> <button  data-toggle="modal" data-target="#myModal" class="test" value="${galleryInstance?.description}">more info</button></li>
									
									<g:if test="${((i+1)%4)==0}">
										<div class="row"></div>
									</g:if>
								</g:each>
							
							
							
							</ul>
							<%--<ul class="thumbnails">
							<g:each in="${galleryInstanceList}" status="i"
									var="galleryInstance">
								<li class="span4">
									<div class="thumbnail">
										<img width="150" height="100"
										src="${createLink(controller:'Gallery',action:'itemUploaded',id:galleryInstance.id)}"
										alt="User Image"> <a class="users-list-name" href="#">
										<div class="caption">
											<h3>Heading</h3>
											<p>Bacon ipsum dolor sit amet sirloin pancetta shoulder
												tongue doner, shank sausage.</p>
											<p>
												<a href="#" class="btn btn-primary">Action</a> <a href="#"
													class="btn">Action</a>
											</p>
										</div>
										
									</div>
									
								</li>
								</g:each>
								</ul>
								
								
						--%></div>
						<div class="box-footer text-center">
							<a href="javascript:void(0)" class="uppercase">View All Users</a>
						</div>
						<!-- /.box-footer -->
					</div>
					<!--/.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
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


	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<p>some content</p>
					<%--<input type="text" name="bookId" id="bookId" value=""/>
        --%>
					<textarea rows="4" cols="90" name="bookId" id="bookId" value="">
Enter text here...</textarea>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<%--<button type="button" class="btn btn-primary">Save changes</button>
      --%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
