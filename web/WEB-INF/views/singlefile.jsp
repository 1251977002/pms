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
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-green sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <jsp:include page="header.jsp">
    <jsp:param name="menu" value="file"/>
  </jsp:include>
  <!-- =============================================== -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">
                <li class="fa fa-reorder" style="color:#1fa67a"></li>&nbsp;文件列表→需求文档
              </h3>
              <div class = "pull-right" style = "margin-right:20px;font-size:18px">
                <a href = "/file/newfile" title = "上传文件"><li class = "fa fa-cloud-upload"></li></a>&nbsp;&nbsp;
                <a class = "deltype" ref = "${param.id}" href = "javascript:;" title = "删除文件夹"><li class = "fa fa-trash"></li></a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-hover">
                <tbody class="myfile">
                <tr>
                  <th style="" class="text-center">#</th>
                  <th>名称</th>
                  <th>大小</th>
                  <th>创建人</th>
                  <th>创建时间</th>
                  <th>操作</th>
                </tr>
                <%--文件夹列表、模板--%>

                </tbody>
              </table>
            </div>
              <input type="hidden" name = "filetypeid" class="filetypeid" value="${param.id}">
            <!-- /.box-body -->
            <nav aria-label="Page navigation" style="float: right">
              <ul id="mypage"></ul>
            </nav>
          </div>
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
<%--分页--%>
<script src="../../adminlte/js/bootstrap-paginator.min.js"></script>
<script src="../../adminlte/js/mustache.js"></script>
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
<%--模板--%>
<script id="template" type="x-tmpl-mustache">
 <tr>
   <td class = "text-center">
   <li class = "fa fa-folder-open-o"></li>
   </td>
   <td><%--<a href = "/file/singleFile?filetypeid={{id}}>{{name}}</a>--%>
   {{filename}}
   </td>
    <td> {{filesize}}</td>
   <td><span class="badge">{{username}}</span></td>
   <td>{{createtime}}</td>
   <td>
      <a href = "/file/previewFile?id={{id}}" title="查看"><span class = "glyphicon glyphicon-eye-open"></span></a>&nbsp;&nbsp;
      <a href = "/file/downLoadFile?id={{id}}" title="下载" id = "download"><span class = "glyphicon glyphicon-download"></span></a>&nbsp;&nbsp;
      <a id = "del" title="删除" class = "delfile" href = "/file/del?id={{id}}"><span class = "glyphicon glyphicon-trash"></span></a>
</td>
</tr>

</script>
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
    //分页
    pageStart();//开始分页
    function pageStart() {//分页函数
      $.ajax({ //去后台查询第一页数据
        type: "get",
        url: "/file/findByPagetype",
        dataType: "json",
        data: {
          pageNo: 1,
          filetypeid:$(".filetypeid").val(),
        }, //参数：当前页为1
        success: function (data) {
          var template = $('#template').html();
          Mustache.parse(template);
          //$(".content").html("");
          $(".myfile tr").not(':eq(0)').empty();
          $(data.pageList).each(function () {
            console.log(data);
            var rendered = Mustache.render(template, this);
            $(".myfile").append(rendered);
          });

          var options = {//根据后台返回的分页相关信息，设置插件参数
            bootstrapMajorVersion: 3, //如果是bootstrap3版本需要加此标识，并且设置包含分页内容的DOM元素为UL,如果是bootstrap2版本，则DOM包含元素是DIV
            currentPage: data.pageNo, //当前页数
            totalPages: data.totalPage, //总页数
            numberOfPages: data.pageSize,//每页记录数
            size:"small",
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
                url: "/file/findByPagetype",
                type: "get",
                dataType: "json",
                data: {pageNo: page,
                  filetypeid:$(".filetypeid").val(),},
                success: function (data) {
                  var template = $('#template').html();
                  Mustache.parse(template);
                  //$(".content").html("");
                  $(".myfile tr").not(':eq(0)').empty();
                  $(data.pageList).each(function () {
                    var rendered = Mustache.render(template, this);
                    $(".myfile").append(rendered);
                  });
                }
              });
            }
          };
          $('#mypage').bootstrapPaginator(options);//设置分页
        }
      });
    }
  });
  //删除点进来的文件
  $(".myfile").on('click','#del',function () {
    if (confirm("确定要删除该文件吗？")) {
      window.location.href = "/file/del";
      return true;
    }
    return false;
  })
  //删除整个文件
  $(".deltype").click(function () {
    if (confirm("确定删除么？")) {
      var filetypeid = $(this).attr("ref");
      window.location.href = "/file/delFiletype?id="+filetypeid;
    }
  });


  /*$("#father").on('click','.delfile',function () {
      if (confirm("确定要删除该文件吗？")) {
        window.location.href = "/file/del?id={{id}}";
        return true;
      }

      return false;
    })*/



</script>
</body>
</html>
