<%@ page import="entity.Project" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>pms</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../adminlte/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../adminlte/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../adminlte/css/ionicons.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../../adminlte/css/select2.min.css">
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
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-green layout-top-nav">

<div class="wrapper">

    <header class="main-header">
        <nav class="navbar navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="../../index2.html" class="navbar-brand"><b>XIXINGPMS</b></a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-left" id="navbar-collapse">

                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
                        </div>
                    </form>
                </div>
                <!-- /.navbar-collapse -->
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <!-- Menu toggle button -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the messages -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <!-- User Image -->
                                                    <img src="../../adminlte/img/user5-128x128.jpg" class="img-circle"
                                                         alt="User Image">
                                                </div>
                                                <!-- Message title and timestamp -->
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <!-- The message -->
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <!-- end message -->
                                    </ul>
                                    <!-- /.menu -->
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- /.messages-menu -->

                        <!-- Notifications Menu -->
                        <li class="dropdown notifications-menu">
                            <!-- Menu toggle button -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">10</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- Inner Menu: contains the notifications -->
                                    <ul class="menu">
                                        <li><!-- start notification -->
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <!-- end notification -->
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks Menu -->
                        <li class="dropdown tasks-menu">
                            <!-- Menu Toggle Button -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-flag-o"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- Inner menu: contains the tasks -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <!-- Task title and progress text -->
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <!-- The progress bar -->
                                                <div class="progress xs">
                                                    <!-- Change the css width attribute to simulate progress -->
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                         role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                         aria-valuemax="100">
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
                        <!-- User Account Menu -->
                        <li class="dropdown user user-menu">
                            <!-- Menu Toggle Button -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <!-- The user image in the navbar-->
                                <img src="../../adminlte/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                <span class="hidden-xs">Alexander Pierce</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- The user image in the menu -->
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
                    </ul>
                </div>
                <!-- /.navbar-custom-menu -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </header>


    <!-- Full Width Column -->
    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    项目列表
                </h1>
                <hr style="border:1px solid #ccc">

                <button type="button" class="btn btn-success btn-flat" data-toggle="modal"
                        data-target=".bs-example-modal-lg" id="startproject">开始一个新的项目
                </button>

                <!--模态窗口-->

                <form action="/createproject/addproject" method="post">
                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
                         aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">

                                    <button type="button" class="close btn-success" data-dismiss="modal"
                                            aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                    <h4 class="modal-title" id="myModalLabel">开始一个新的项目</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>项目名称</label>

                                        <input name="projectname" type="text" class="form-control" id="inputSuccess"
                                               placeholder="请输入项目名称">
                                    </div>
                                    <!-- textarea -->
                                    <div class="form-group">
                                        <label>项目介绍</label>

                                        <textarea name="projectintro" class="form-control" rows="3"
                                                  placeholder="请输入项目介绍"></textarea>
                                    </div>
                                    <!-- /.form-group -->
                                    <div class="form-group">
                                        <label>负责人</label>
                                        <select name="projectleader" class="form-control select2" id="projectlead" style="width: 100%;">

                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label>项目成员</label>
                                        <select name="projectmembers" class="form-control select2" multiple="multiple"
                                                data-placeholder="请选择" id="projectmember" style="width: 100%;">

                                           <%-- <option>Alaska</option>
                                            <option>California</option>
                                            <option>Delaware</option>
                                            <option>Tennessee</option>
                                            <option>Texas</option>
                                            <option>Washington</option>--%>
                                        </select>
                                    </div>
                                    <!-- /.form-group -->


                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-success btn-sm" id="start">开始</button>
                                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal" id="out">
                                        取消
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

            </section>

            <!-- Main content -->

            <section class="content">

            <%--<c:choose>
            <c:when test="${ (!empty List) && (fn:length(List) > 0)}">
            <c:forEach var="project" items="${List}" varStatus="sta">

                <table class="mytable">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title ">
                                <a href="/project/jump">
                                    <li class="fa fa-slack">${project.name}</li>
                                </a>
                            </h3>
                        </div>

                        <div class="box-body box-info">
                                ${project.content}
                        </div>
                        <!-- /.box-body -->
                    </div>
                </table>
                </c:forEach>
                </c:when>
                </c:choose>
--%>


               <%-- <div class="clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="#">&laquo;</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>--%>

            </section>
            <nav aria-label="Page navigation">
                <ul id="mypage"></ul>
            </nav>

            <!-- /.content -->

        </div>

        <!-- /.container -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="container">
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.4.13
            </div>
            <strong>Copyright &copy; 2014-2019 <a href="javascript:;">PMS</a>.</strong> All rights
            reserved.
        </div>
        <!-- /.container -->
    </footer>
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
<!-- Select2 -->
<script src="../../adminlte/js/select2.full.min.js"></script>
<!-- AdminLTE for demo purposes
<script src="../../dist/js/demo.js"></script>-->
<script src="../../adminlte/js/bootstrap-paginator.min.js"></script>
<script src="../../adminlte/js/mustache.js"></script>

<script id="template" type="x-tmpl-mustache">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title ">
                                <a href="/createproject/jump?id={{id}}">
                                    <li class="fa fa-slack">{{name}}</li>
                                </a>
                            </h3>
                        </div>

                        <div class="box-body box-info">
                                {{content}}
                        </div>
                    </div>

</script>
<script>




    pageStart();//开始分页

    function pageStart() {//分页函数
        $.ajax({ //去后台查询第一页数据
            type: "get",
            url: "/pmspage/findByPage",
            dataType: "json",
            data: {pageNo: '1'}, //参数：当前页为1
            success: function (data) {
                var template = $('#template').html();
                Mustache.parse(template);
                $(".content").html("");
                $(data.pageList).each(function () {
                    var rendered = Mustache.render(template, this);
                    $(".content").append(rendered);
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
                            url: "/pmspage/findByPage",
                            type: "get",
                            dataType: "json",
                            data: {pageNo: page},
                            success: function (data) {
                                var template = $('#template').html();
                                Mustache.parse(template);
                                $(".content").html("");
                                //$(".mytable tr").not(':eq(0)').empty()
                                $(data.pageList).each(function () {
                                    var rendered = Mustache.render(template, this);
                                    $(".content").append(rendered);
                                });

                            }
                        });
                    }
                };
                $('#mypage').bootstrapPaginator(options);//设置分页
            }
        });
    }

</script>


<script>
    $(function () {

        //Initialize Select2 Elements
        $('.select2').select2()


      /*  $(".select2").each(function () {
            var txt = $(this).val();
            
        })*/

        $("#startproject").click(function () {

            $.get("/createproject/findUser",function(json){
                $("select").empty();
                $(json).each(function () {
                    var option = "<option value="+this.username+">" +this.username+ "</option>";
                    $("#projectlead").append(option);
                    $("#projectmember").append(option);
                })
            })

        })


    });


</script>

</body>
</html>
