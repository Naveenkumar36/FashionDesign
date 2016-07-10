<!DOCTYPE html>
<html>
<g:render template="/layouts/head" />
  <body class="login-page">
    <div class="login-box">
      <div class="login-logo"><%--
        <a href="../../index2.html"><b>Admin</b>LTE</a>
      --%></div><!-- /.login-logo -->
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
            <input type="text" name=userId class="form-control" placeholder="UserId"/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" name="password" class="form-control" placeholder="Password"/>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <%--<div class="col-xs-8">    
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> Remember Me
                </label>
              </div>                        
            </div><!-- /.col -->--%>
         <div class="col-lg-4"></div>
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
            </div><!-- /.col -->
           
          </div>
          </g:form>
          <%--
        </form>

        <div class="social-auth-links text-center">
          <p>- OR -</p>
          <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
        </div><!-- /.social-auth-links -->

        <a href="#">I forgot my password</a><br>
        <a href="register.html" class="text-center">Register a new membership</a>

      --%></div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

  </body>
</html>