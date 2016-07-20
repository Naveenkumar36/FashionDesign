<!DOCTYPE html>
<html>
<g:render template="/layouts/head" />
<head>
<style type="text/css">
.label {
    display: inline;
    padding: .2em .6em .3em;
    font-size: 92%;
    font-weight: 700;
    line-height: 3;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25em;
}
</style>

</head>
<header class="main-header">

	<nav class="navbar navbar-static-top " role="navigation">
		<div class="container col-lg-10"
			style="background-color: rgb(14, 14, 18);">
			<div class="navbar-header">
				<a class="navbar-brand"><b>FASHION DESIGN</b></a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-collapse">


				<div class="col-lg-4 col-lg-push-6">
					<div class="col-lg-3">
						<ul class="list-unstyled">
							<li><a href="${request.contextPath}/user/signUp"><span
									class="label label-info ">Sign Up</span></a></li>
						</ul>
					</div>
					<div class="col-lg-3">
						<ul class="list-unstyled">
							<li><a href=""><span class="label label-info ">Sign
										In</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
</header>


<body class="login-page">
	<div class="login-box">
		<div class="login-logo">
			<%--
        <a href="../../index2.html"><b>Admin</b>LTE</a>
      --%>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>
			<%--<form action="login"  method="post">
        
          --%>
			<g:if test="${flash.error}">
				<div class="alert alert-danger alert-dismissable">
					<i class="fa fa-ban"></i>
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong><i class="icon24 i-close-4"></i> Error: </strong>
					${flash.error}, try submitting again.
				</div>
			</g:if>
			<g:if test="${flash.message}">
				<div class="alert alert-success alert-dismissable">
					<i class="fa fa-check"></i>
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong><i class="icon24 i-close-4"></i> <b>Alert!</b></strong>
					${flash.message}
				</div>
			</g:if>
			<g:form action="doLogin" controller="User" method="POST">
				<div class="form-group has-feedback">
					<input type="text" name=userId class="form-control"
						placeholder="emailId" /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" class="form-control"
						placeholder="Password" /> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Sign
							In</button>
					</div>
				</div>
			</g:form>
			<div class="row " style="padding-top: 2%" >
						<g:link action="recover" controller="user">Forgot password</g:link>
					
				</div>
		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

</body>
</html>