<%--<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scheduling.label', default: 'Scheduling')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-scheduling" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-scheduling" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${schedulingInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${schedulingInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:schedulingInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
--%>

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
        <h1>
          Book Tailor
          
        </h1>
      </section>
      <section class="content">
				<div class="row">
					<!-- left column -->
					<div class="col-lg-3"></div>
					<div class="col-md-6">
						<!-- ------------error display can be added here---------------- -->
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
								<strong><i class="icon24 i-close-4"></i> <b>Success:</b> </strong>
								${flash.message}
							</div>
						</g:if>
						<!-- general form elements -->
						<div class="box box-formhead box-solid">
							<div class="box-header">
								<h3 class="box-title">Tailor</h3>
							</div>
							<g:form url="[resource:schedulingInstance, action:'save']" >
								
								<div class="box-footer"></div>
								<fieldset class="form">
									<g:render template="form" />
								</fieldset>
								<fieldset class="buttons">
									<div class="box-footer">
										<%--<h5
											style="color: #3C80BC; font-weight: bold; text-align: center">Creating
											New User</h5>
										--%><div class="col-lg-2"></div>
										<%--<g:createUpdateActionLink createUpdateButtonName="Submit"
											createUpdateButtonClass="btn btn-primary btn-sm"></g:createUpdateActionLink>
										<div class="col-lg-3"></div>
										<g:cancelActionLink controller="Account" cancelAction="index"
											cancelButtonName="Cancel"
											cancelButtonClass="btn btn-primary btn-sm"
											editDeleteId="${accountInstance?.id}"></g:cancelActionLink>
									--%>
									<div class="col-lg-3"></div>
									<g:submitButton class="btn btn-primary btn-xs" name="Book Tailor" />
									
									</div>
								</fieldset>
							</g:form>
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <strong>Copyright &copy; 2014-2016 <a href="#">Fashion Design</a>.</strong> All rights
      reserved.
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->
</body>

</html>
