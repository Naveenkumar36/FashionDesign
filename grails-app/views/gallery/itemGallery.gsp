<!DOCTYPE html>
<html>
<g:render template="/layouts/head" />
<g:render template="/layouts/header" />
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav ">

<div class="wrapper">
  <div class="content-wrapper">
    <div class="container">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          GALLERY ${items}
          
        </h1>
        <ol class="breadcrumb">
          <li><a href="${request.getContextPath()}/user/dashboard"><i class="fa fa-dashboard"></i> Home</a></li><%--
          <li><a href="#">Layout</a></li>
          <li class="active">Top Navigation</li>
        --%></ol>
      </section><%--

      <!-- Main content -->
      <section class="content">
        <div class="callout callout-info">
          <h4>INTRODUCTION!</h4>

          <p>Fashion Street is a best</p>
        </div>
        <!-- /.box -->
      </section>
      <!-- /.content -->
      
      
      
      
      
       --%>
       <br><br>
       <div class="col-md-12">
              <!-- USERS LIST -->
              <div class="box box-danger">
                <div class="box-header with-border">
                  <h3 class="box-title">Latest Design</h3>

                  <%--<div class="box-tools pull-right">
                    <span class="label label-danger">8 New Members</span>
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                    </button>
                  </div>
                --%></div>
                <!-- /.box-header -->
                <div class="box-body no-padding">
                 
                  <ul class="users-list clearfix">
                  <g:each in="${galleryInstanceList}" status="i"
						var="galleryInstance">
                    <li>
                      <img width="150" height="100" src="${createLink(controller:'Gallery',action:'itemUploaded',id:galleryInstance.id)}" alt="User Image">
                      <a class="users-list-name" href="#">Alexander Pierce</a>
                      <span class="users-list-date">Today</span>
                    </li>
                    </g:each>
                    </ul>
                  
                    
                    <%--
                    <li>
                      <img src="${request.getContextPath()}/images/user8-128x128.jpg" alt="User Image">
                      <a class="users-list-name" href="#">Norman</a>
                      <span class="users-list-date">Yesterday</span>
                    </li>
                    <li>
                      <img src="${request.getContextPath()}/images/user7-128x128.jpg" alt="User Image">
                      <a class="users-list-name" href="#">Jane</a>
                      <span class="users-list-date">12 Jan</span>
                    </li>
                    <li>
                      <img src="${request.getContextPath()}/images/user6-128x128.jpg" alt="User Image">
                      <a class="users-list-name" href="#">John</a>
                      <span class="users-list-date">12 Jan</span>
                    </li>
                    <li>
                      <img src="${request.getContextPath()}/images/user2-160x160.jpg" alt="User Image">
                      <a class="users-list-name" href="#">Alexander</a>
                      <span class="users-list-date">13 Jan</span>
                    </li>
                    <li>
                      <img src="${request.getContextPath()}/images/user5-128x128.jpg" alt="User Image">
                      <a class="users-list-name" href="#">Sarah</a>
                      <span class="users-list-date">14 Jan</span>
                    </li>
                    <li>
                      <img src="${request.getContextPath()}/images/user4-128x128.jpg" alt="User Image">
                      <a class="users-list-name" href="#">Nora</a>
                      <span class="users-list-date">15 Jan</span>
                    </li>
                    <li>
                      <img src="${request.getContextPath()}/images/user3-128x128.jpg" alt="User Image">
                      <a class="users-list-name" href="#">Nadia</a>
                      <span class="users-list-date">15 Jan</span>
                    </li>
                  --%>
                  <!-- /.users-list -->
                </div>
                
                <!-- /.box-body --><%--
                
                
                
               <g:each in="${galleryInstanceList}" status="i"
						var="galleryInstance">
                    <li>
                      <img src="${createLink(controller:'Gallery',action:'itemUploaded',id:galleryInstance.id)}" alt="User Image">
                      <a class="users-list-name" href="#">Alexander Pierce</a>
                      <span class="users-list-date">Today</span>
                    </li>
                    </g:each>
                
                
                
                
                
                --%><div class="box-footer text-center">
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
      <strong>Copyright &copy; 2014-2016 <a href="#">Fashion Design</a>.</strong> All rights
      reserved.
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->

</body>
</html>
