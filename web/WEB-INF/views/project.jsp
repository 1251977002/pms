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

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
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

  <header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>PMS</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>XIXINGPMS</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../adminlte/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../../adminlte/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Alexander Pierce</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../../adminlte/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../adminlte/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
     
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu tree" data-widget="tree">
        <li class="header text-center" ><strong>诺亚财富私/公募基金</strong></li>
        <li class="active">
          <a href="#">
            <i class="glyphicon glyphicon-home"></i> <span>最新动态</span>
          </a>
		  
        </li>
        <li class="treeview">
          <a href="goal.jsp">
            <i class="glyphicon glyphicon-flag"></i>
            <span>目标</span>
			<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
			<li><a href="/goal/showgoal"><i class="fa fa-circle-o"></i>查看所有目标</a></li>
            <li><a href="/goal/newgoal"><i class="fa fa-circle-o"></i>添加新目标</a></li>
            <li><a href="/goal/showAlltask"><i class="fa fa-circle-o"></i>查看所有任务</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-database"></i> <span>资料库</span>
			<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		   <ul class="treeview-menu">
				<li><a href="/document/showdocument"><i class="fa fa-circle-o"></i>查看资料列表</a></li>
				<li><a href="/document/sharenewdocument"><i class="fa fa-circle-o"></i>分享新资料</a></li>
				<li><a href="/document/showdocument"><i class="fa fa-circle-o"></i>查看我分享的资料</a></li>
			</ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-file-text "></i>
            <span>文件共享</span>
			<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		  <ul class="treeview-menu">
				<li><a href="/file/showfile"><i class="fa fa-circle-o"></i>查看文件列表</a></li>
				<li><a href="/file/createfile"><i class="fa fa-circle-o"></i>创建文件夹</a></li>
				
		  </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="glyphicon glyphicon-user"></i>
            <span>联系人</span>
			<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		  <ul class="treeview-menu">
				<li><a href="/contact/contactlist"><i class="fa fa-circle-o"></i>查看联系人列表</a></li>
				<li><a href="/contact/addcontact"><i class="fa fa-circle-o"></i>添加联系人</a></li>
		  </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa  fa-bolt"></i> <span>想法</span>
			<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		   <ul class="treeview-menu">
				<li><a href="/idea/showidea"><i class="fa fa-circle-o"></i>查看所有想法</a></li>
				<li><a href="/idea/addidea"><i class="fa fa-circle-o"></i>添加想法</a></li>
		  </ul>
        </li>
		 <li>
          <a href="#">
            <i class="fa fa-bug"></i> <span>Bug</span>
          </a>
        </li>
		 <li>
          <a href="#">
            <i class="glyphicon glyphicon-cog"></i> <span>项目设置</span>
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
    <!-- Main content -->
    <section class="content">

     <div class="row">
        
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-success">
            <div class="box-header with-border">
			  <li class = "fa fa-commenting-o" style = "color:#dd4b39"></li>
              <h1 class="box-title">你在想什么？</h1>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            
              <div class="form-group">
                <input type="hidden" class="newideatitle" value="新想法">
                    <textarea id="compose-textarea" class="form-control newideacontent" rows = "10" name="content"></textarea>
              </div>
             
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <div class="pull-right">
                <button type="submit" class="btn btn-success btn-flat newideabtn"><i class="fa  fa-send "></i> 发布</button>
              </div>
              <button type="reset" class="btn btn-default btn-flat newideadel"><i class="fa fa-times "></i> Discard</button>
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
		  
		  <div class="box box-solid">
            <div class="box-header with-border">
			  <li class = "fa fa-comments-o" style = "color:#00a65a"></li>
              <h1 class="box-title">信息流 @我的</h1>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            
              <!-- /.tab-pane -->
              <div class="tab-pane" id="timeline">
                <!-- The timeline -->
                <ul class="timeline timeline-inverse mymessage">
                  <!-- timeline time label -->
                  <li class="time-label">
                        <span class="bg-red">
                          10 Feb. 2014
                        </span>
                  </li>
                  <!-- /.timeline-label -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-envelope bg-blue"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

                      <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

                      <div class="timeline-body">
                        Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                        weebly ning heekya handango imeem plugg dopplr jibjab, movity
                        jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                        quora plaxo ideeli hulu weebly balihoo...
                      </div>
                      <div class="timeline-footer">
                        <a class="btn btn-primary btn-xs">Read more</a>
                        <a class="btn btn-danger btn-xs">Delete</a>
                      </div>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-user bg-aqua"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span>

                      <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request
                      </h3>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-comments bg-yellow"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>

                      <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>

                      <div class="timeline-body">
                        Take me to your leader!
                        Switzerland is small and neutral!
                        We are more like Germany, ambitious and misunderstood!
                      </div>
                      <div class="timeline-footer">
                        <a class="btn btn-warning btn-flat btn-xs">View comment</a>
                      </div>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <!-- timeline time label -->
                  <li class="time-label">
                        <span class="bg-green">
                          3 Jan. 2014
                        </span>
                  </li>
                  <!-- /.timeline-label -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-camera bg-purple"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 2 days ago</span>

                      <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>

                      <div class="timeline-body">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                      </div>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <li>
                    <i class="fa fa-clock-o bg-gray"></i>
                  </li>
                </ul>
              </div>
              <!-- /.tab-pane -->
             
            </div>
            <!-- /.box-body -->
            <div class="box-footer">

              <nav aria-label="Page navigation" style="float: right">
                <ul class="pagination pagination-mini" id="mypage"></ul>
              </nav>
				
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
		  
		  
        </div>
        <!-- /.col -->
		<div class="col-md-3">
          <!--<a href="mailbox.html" class="btn btn-primary btn-block margin-bottom">Back to Inbox</a>-->

          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">我的任务</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <%--我的任务--%>
              <ul class="nav nav-pills nav-stacked mytask">
                <c:forEach var="task" items="${taskList}">
                  <li>
                    <a href="#">
                      <i class="fa fa-tasks"></i>
                        ${task.content}
                    </a>
                  </li>
                </c:forEach>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
          
        </div>
		<!--/.col-->
      </div>
      <!-- /.row -->
	  
	  
	  
	  
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
<%--分页jar--%>
<script src="../../adminlte/js/bootstrap-paginator.min.js"></script>
<script src="../../adminlte/js/mustache.js"></script>
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree();
    //分页显示我的消息
    //分页
    pageStart();//开始分页
    function pageStart() {//分页函数
      $.ajax({ //去后台查询第一页数据
        type: "get",
        url: "/project/findMessageByPage",
        dataType: "json",
        data: {pageNo: '1'}, //参数：当前页为1
        success: function (data) {
          console.log(data);
          $(".mymessage").html("");
          $(data.pageList[0].allDate).each(function () {
            var dateHtml = "<li class=\"time-label\">" + "<span class=\"bg-red\">" + this + "</span>" + "</li>";
            $(".mymessage").append(dateHtml);
            $(data.pageList[0][this]).each(function () {
              var contentHtml = "<li>" +
                      "   <i class=\"fa fa-comments bg-yellow\"></i>" +
                      "   <div class=\"timeline-item\">" +
                      "       <span class=\"time\"><i class=\"fa fa-clock-o\">" +
                      "       </i>" + this.createtime + "</span>" +
                      "       <h3 class=\"timeline-header\">" +
                      "       <a href=\"#\">" + this.username + "</a> commented on your post + </h3>" +
                      "       <div class=\"timeline-body\">"  + this.content + "</div>" +
                      "       <div class=\"timeline-footer\">" +
                      "           <a class=\"btn btn-warning btn-flat btn-xs\">View comment</a>" +
                      "       </div>" +
                      "   </div>" +
                      "</li>"
              $(".mymessage").append(contentHtml);
            });
          });

          var options = {//根据后台返回的分页相关信息，设置插件参数
            bootstrapMajorVersion: 3, //如果是bootstrap3版本需要加此标识，并且设置包含分页内容的DOM元素为UL,如果是bootstrap2版本，则DOM包含元素是DIV
            currentPage: data.pageNo, //当前页数
            totalPages: data.totalPage, //总页数
            numberOfPages: data.pageSize,//每页记录数
            itemTexts: function (type, page, current) {//设置分页按钮显示字体样式
              switch (type) {
                case "first":
                  return "首页";
                case "prev":
                  return "上一页";
                case "next":
                  return "下一页";
                case "last":
                  return "末页";
                case "page":
                  return page;
              }
            },
            onPageClicked: function (event, originalEvent, type, page) {//分页按钮点击事件
              $.ajax({//根据page去后台加载数据
                url: "/project/findMessageByPage",
                type: "get",
                dataType: "json",
                data: {pageNo: page},
                success: function (data) {
                  $(".mymessage").html("");
                  $(data.pageList[0].allDate).each(function () {
                    var dateHtml = "<li class=\"time-label\">" + "<span class=\"bg-red\">" + this + "</span>" + "</li>";
                    $(".mymessage").append(dateHtml);
                    $(data.pageList[0][this]).each(function () {
                      var contentHtml = "<li>" +
                              "   <i class=\"fa fa-comments bg-yellow\"></i>" +
                              "   <div class=\"timeline-item\">" +
                              "       <span class=\"time\"><i class=\"fa fa-clock-o\">" +
                              "       </i>" + this.createtime + "</span>" +
                              "       <h3 class=\"timeline-header\">" +
                              "       <a href=\"#\">" + this.username + "</a> commented on your post + </h3>" +
                              "       <div class=\"timeline-body\">"  + this.content + "</div>" +
                              "       <div class=\"timeline-footer\">" +
                              "           <a class=\"btn btn-warning btn-flat btn-xs\">View comment</a>" +
                              "       </div>" +
                              "   </div>" +
                              "</li>"
                      $(".mymessage").append(contentHtml);
                    });
                  });
                  var clockHtml = "<li><i class=\"fa fa-clock-o bg-gray\"></i></li>"
                  $(".mymessage").append(clockHtml);
                }
              });
            }
          };
          $('#mypage').bootstrapPaginator(options);//设置分页
        }
      });
    }
    //发布想法
    $(".newideabtn").click(function () {
      $.ajax({
        type:"GET",
        url:"/idea/saveIdea",
        data:{
          ideatitle:$(".newideatitle").val(),
          ideacontent:$(".newideacontent").val(),
        },
        success:function () {
          $(".newideacontent").val("");
          alert("发布成功！")
        }
      });
    });
    //清空textarea中的想法
    $(".newideadel").click(function () {
      $(".newideacontent").val("");
    });

    //我的任务
    $.ajax({
      type:"GET",
      url:"/project/findtaskbyuserid",
      success:function (json) {
        console.log(json);
        //清空
        $(".mytask").empty();
        $(json).each(function () {
          $(".mytask").append("<li> <a href=\"#\"> <i class=\"fa fa-tasks\"></i>" + this.content + " </a> </li>");
        });
      }
    });
  });
</script>
</body>
</html>
