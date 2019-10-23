<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>XIXINGPMS</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   
	<!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../adminlte/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../adminlte/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../adminlte/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../adminlte/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../adminlte/css/_all-skins.min.css">
 
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-green sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

    <jsp:include page="header.jsp">
        <jsp:param name="menu" value="file" />
    </jsp:include>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
    <!-- Main content -->
    <section class="content">

     <div class="row">
        
        <!-- /.col -->
        <div class="col-md-12">

		  <div class="box box-danger">

			<!-- /.box-header -->
            <div class="box-header with-border">
			  <li class = "fa fa-flag-checkered" style = "color:#00a65a"></li>

              <h1 class="box-title"><a href = "#">${goal.name}</a></h1>
			  <div class = "pull-right">
				
				<a href = "/goal/updategoal?id=${goal.id}"><li class = "fa fa-edit"></li>&nbsp;编辑</a>
			  </div>
				
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            
				<p>${goal.content}</p>
				<div class="progress">
					<div class="progress-bar progress-bar-danger progress-bar-striped " role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
					  <span class="">60% Complete</span>
					</div>
				</div>
				<div>
					<a class = "btn btn-success btn-flat" href = "/task/jumpaddtask?id=${goal.id}" id="addtask">
						<li class = "fa fa-plus-circle"></li>&nbsp;添加新任务
					</a>
				</div>
            </div>

            <!-- /.box-body -->
          

			  <!--task-->
<c:choose>
    <c:when test="${ (!empty List) && (fn:length(List) > 0)}">
        <c:forEach var="task" items="${List}" varStatus="sta">
			  <div class="box box-solid">
				<!-- /.box-header -->
				<div class="box-header with-border">
				  <li class = "fa fa-flag" style = "color:#00a65a"></li>
				  <h1 class="box-title">${task.name}<strong>[Hanks]</strong></h1>
				  <div class = "pull-right">
                      <a href = "/task/edittask?id=${goal.id}"><li class = "fa fa-pencil">
                      </li>编辑</a>
                  </div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
			
					<p>${task.content}</p>
					<div class="progress">
						<div class="progress-bar progress-bar-success progress-bar-striped " role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
						  <span class="">60% Complete</span>
						</div>
					</div>
					
				</div>
				<!-- /.box-body -->
			  </div>
			  <!--task-->
        </c:forEach>
    </c:when>
</c:choose>
			  
			  
			   <!--task-->
			<%--  <div class="box box-solid">
				<!-- /.box-header -->
				<div class="box-header with-border">
				  <li class = "fa fa-flag" style = "color:#00a65a"></li>
				  <h1 class="box-title">编写需求文档设计数据库<strong>[Hanks]</strong></h1>
				  <div class = "pull-right"><a href = "edit_task.jsp"><li class = "fa fa-pencil"></li>编辑</a></div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
			
					<p>初秋的河西走廊，金风送爽，瓜果飘香，祁连雪山和沙漠绿洲相映成辉。
					8月19日至22日，习近平在甘肃省委书记林铎、省长唐仁健陪同下，
					先后来到酒泉、</p>
					<div class="progress">
						<div class="progress-bar progress-bar-warning progress-bar-striped " role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
						  <span class="">60% Complete</span>
						</div>
					</div>
					
				</div>
				<!-- /.box-body -->
			  </div>
			  <!--task-->
			  
			  
			   <!--task-->
			  <div class="box box-solid">
				<!-- /.box-header -->
				<div class="box-header with-border">
				  <li class = "fa  fa-flag" style = "color:#00a65a"></li>
				  <h1 class="box-title">
					编写需求文档设计数据库
					<strong>[Hanks]
						开始时间：2018-12-30 截止时间：2019-01-03 【进行中】
					</strong>
				   </h1>
				   <div class = "pull-right"><a href = "edit_task.jsp"><li class = "fa fa-pencil"></li>编辑</a></div>
				
				</div>
				<!-- /.box-header -->
				<div class="box-body">
			
					<p>初秋的河西走廊，金风送爽，瓜果飘香，祁连雪山和沙漠绿洲相映成辉。
					8月19日至22日，习近平在甘肃省委书记林铎、省长唐仁健陪同下，
					先后来到酒泉、</p>
					<div class="progress">
						<div class="progress-bar progress-bar-primary progress-bar-striped " role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
						  <span class="">40% Complete</span>
						</div>
					</div>
					
				</div>
				<!-- /.box-body -->
			  </div>--%>
			  <!--task-->
			  
			  
			  
            
          </div>
          <!-- /. box --> 
        </div>
      </div>
      
	  
	  
	  
	  
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.13
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">PMS</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>

      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../../adminlte/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../adminlte/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../adminlte/js/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../adminlte/js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../adminlte/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes
<script src="adminlte/js/demo.js"></script> -->
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
  /*$("#addtask").click(function () {

      $.get("/createproject/findUser",function(json){
          $("select").empty();
          $(json).each(function () {
              var option = "<option value="+this.username+">" +this.username+ "</option>";
              $("#projectlead").append(option);
              $("#projectmember").append(option);
          })
      })*/


</script>
</body>
</html>
