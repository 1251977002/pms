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
   <!-- Theme style -->
  <link rel="stylesheet" href="../../adminlte/css/AdminLTE.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../adminlte/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../adminlte/css/ionicons.min.css">
 
 
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

		  <div class="box box-widget">
            <div class="box-header with-border">
              <div class="user-block">
                <img class="img-circle" src="../../adminlte/img/user1-128x128.jpg" alt="User Image">
                <span class="username"><a href="#">${document.username}</a></span>
                <span class="description">${document.createtime}</span>
              </div>
              <!-- /.user-block -->
              <div class="box-tools">
                
                <a href = "/document/showdocument">返回资料列表</a>
                
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <!-- post text -->
              <h4><strong>${document.title}</strong></h4>

              <p>${document.content}</p>

              <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
              <button type = "button" class="btn btn-default btn-xs" id = "comt"><i class="fa fa-comments-o"></i> Comments</button>
              
            </div>
            <!-- /.box-body -->
            <div class="box-footer box-comments comments">

            </div>
            <nav aria-label="Page navigation" style="padding-left: 15px">
              <ul id="mypage"></ul>
            </nav>
            <!-- /.box-footer -->
            <div class="box-footer">
              <img class="img-responsive img-circle img-sm" src="../../adminlte/img/user4-128x128.jpg" alt="Alt Text">
              <!-- .img-push is used to add margin to elements next to floating images -->
              <div class="img-push">
                <input type="text" id="incomt" name = "content" class="form-control input-sm" value="">
                <button type="submit" class="btn btn-success btn-flat send" style="float: right"><i class="icon-pencil icon-white"></i> 提交</button>
              </div>
            </div>
            <!-- /.box-footer -->
          </div>
          
        </div>
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

<script src="../../adminlte/js/bootstrap-paginator.min.js"></script>

<script src="../../adminlte/js/mustache.js"></script>

<script id="template" type="x-tmpl-mustache">
  <div class="box-comment">
                <!-- User image -->
                <img class="img-circle img-sm" src="../../adminlte/img/user3-128x128.jpg" alt="User Image">

                <div class="comment-text">
                      <span class="username">
                        {{username}}
                        <span class="text-muted pull-right">{{createtime}}</span>
                      </span>
                  {{content}}
                </div>
                <!-- /.comment-text -->
              </div>



</script>
<!-- AdminLTE for demo purposes
<script src="adminlte/js/demo.js"></script> -->
<script>

  $(function () {
    pageStart();//开始分页

    function pageStart() {//分页函数
      //var id = $(".ideaid").val();

      $.ajax({ //去后台查询第一页数据
        type: "get",
        url: "/document/findCommentBydocumentid",
        dataType: "json",
        data: {
          pageNo: 1,//参数：当前页为1
          documentId:${document.id}
        },
        success: function (data) {
          var template = $('#template').html();
          Mustache.parse(template);
          $(".comments").html("");
          $(data.pageList).each(function () {
            var rendered = Mustache.render(template, this);
            $(".comments").prepend(rendered);
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
                url: "/idea/findIdeaCommentByIdeaid",
                type: "get",
                dataType: "json",
                data: {pageNo: page,ideaId:${document.id}},
                success: function (data) {
                  var template = $('#template').html();
                  Mustache.parse(template);
                  $(".comments").html("");
                  //$(".mytable tr").not(':eq(0)').empty()
                  $(data.pageList).each(function () {
                    var rendered = Mustache.render(template, this);
                    $(".comments").prepend(rendered);
                  });

                }
              });
            }
          };
          $('#mypage').bootstrapPaginator(options);//设置分页

        }
      });
    }

    $(".send").click(function () {
      var cont = $("#incomt").val();
      $.get("/document/addcomment",{cont:cont, documentId:${document.id}},function (json) {
        var template = $('#template').html();
        Mustache.parse(template);
        var rendered = Mustache.render(template, json);
        $("#comments").prepend(rendered);

      })
    })
  });





</script>






<script>

  $(document).ready(function () {
    $('.sidebar-menu').tree();
	$("#comt").click(function(){
		$("#incomt").focus();
	
	});
  })
</script>
</body>
</html>
