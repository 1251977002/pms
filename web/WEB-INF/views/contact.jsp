<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
                <div class="col-md-4">

                    <div class="box box-success">
                        <div class="box-header with-border">
                            <a href="/contact/addcontact" class="btn btn-default btn-block">
                                <li class="fa fa-plus"></li>
                                <b>添加联系人</b>
                            </a>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <ul class="nav nav-pills nav-stacked person">

                            </ul>

                            <nav aria-label="Page navigation" style="padding-left: 15px">
                                <ul id="mypage"></ul>
                            </nav>
                        </div>
                        <!-- /.box-body -->
                    </div>

                    <!-- /.box -->
                </div>
                <!-- /.col -->
                <div class="col-md-8">
                    <div class="box box-success">
                        <div class="box-header with-border ">
				<span class="head">

                </span>
                            <div class="pull-right">
                                <a class="btn btn-success btn-flat" href="/contact/jumpedit">
                                    <i
                                        class="icon-pencil icon-white">

                                    </i>编辑</a>
                                <a class="btn btn-danger btn-flat" id="del" href="/contact/del">
                                    <i class="icon-trash icon-white">

                                    </i>删除</a>
                            </div>

                        </div>
                        <div class="box-body">

                            <dl class="dl-horizontal dt">

                            </dl>


                            <h4><strong>记录</strong></h4>

                            <ul class="todo-list ui-sortable record">

                            </ul>

                            <nav aria-label="Page navigation" style="padding-left: 15px">
                                <ul id="mypage1"></ul>
                            </nav>

                            </br>
                            <%--<a href="#" class="btn btn-default btn-xs btn-flat">
                                翻看记录<i class="fa fa-long-arrow-down"></i>
                            </a>--%>

                        </div>
                        <div class="box box-footer">

                            <button type="button" class="btn btn-default pull-right" data-toggle="modal"
                                    data-target=".bs-example-modal-lg"><i class="fa fa-plus"></i> Add item
                            </button>
                            <!--模态窗口-->

                            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
                                 aria-labelledby="myLargeModalLabel">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close btn-success" data-dismiss="modal"
                                                    aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">添加记录</h4>
                                        </div>
                                        <form action="/contact/addtxt" method="post">
                                            <div class="modal-body">

                                                <!-- textarea -->
                                                <div class="form-group">
                                                    <input type="hidden" name="contactId" class="contactId">
                                                    <textarea name="content" class="form-control" rows="8"
                                                              placeholder="请输入记录内容"></textarea>
                                                </div>
                                                <!-- /.form-group -->
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-success btn-sm">添加</button>
                                                <button type="button" class="btn btn-default btn-sm"
                                                        data-dismiss="modal">取消
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col -->
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
        <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE</a>.</strong> All rights
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


<script id="template1" type="x-tmpl-mustache">

       <h3 class="box-title">{{name}}</h3> <span class="label label-danger">{{position}}</span>



</script>

<script id="template" type="x-tmpl-mustache">
        <dt>手机</dt>
        <dd>{{tel}}</dd>
        <dt>固话</dt>
        <dd>{{moblie}}</dd>
        <dt>邮箱</dt>
        <dd>{{email}}</dd>
        <dt>地址</dt>
        <dd>{{address}}</dd>
        <dt>QQ</dt>
        <dd>{{qq}}</dd>
        <dt>微信</dt>
        <dd>{{wechat}}</dd>


</script>


<script id="template2" type="x-tmpl-mustache">
    <li class="person2">


         <span class="text">{{content}}</span>

            <div class="tools">
                <i class="fa fa-edit"></i>
                <i class="fa fa-trash-o"></i>
            </div>
            <div style="padding-left:5px">
                <small><i class="fa fa-clock-o text-red"></i>&nbsp;发布于{{createtime}}</small>
            </div>

        </li>




</script>


<script>
    $(function () {

        pageStart();//开始分页

        function pageStart() {//分页函数

            $.ajax({ //去后台查询第一页数据
                type: "GET",
                url: "/contact/listcontact",
                dataType: "json",
                data: {pageNo: 1},	//参数：当前页为1
                success: function (data) {
                    $(".person").html("");
                    $(data.pageList).each(function () {
                        if ("女" == this.sex) {
                            var li = "<li ><a  href=\"javascript:;\"  class=\"ali\" ref =" + this.id + " ><i class=\"fa fa-female text-red\"></i>&nbsp;" + this.name + "</a></li>";
                        } else {
                            var li = "<li ><a  href=\"javascript:;\"  class=\"ali\"  ref =" + this.id + "><i class=\"fa fa-male text-green\"></i>&nbsp;" + this.name + "</a></li>";
                        }
                        $(".person").append(li)
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
                                url: "/contact/listcontact",
                                type: "get",
                                dataType: "json",
                                data: {pageNo: page},
                                success: function (data) {

                                    $(".person").html("");
                                    $(data.pageList).each(function () {
                                        if ("女" == this.sex) {
                                            var li = "<li ><a  href=\"javascript:;\" onclick=\"js_method()\" class=\"ali\"  ref =" + this.id + "><i class=\"fa fa-female text-red\"></i>&nbsp;" + this.name + "</a></li>";
                                        } else {
                                            var li = "<li ><a  href=\"javascript:;\" onclick=\"js_method()\" class=\"ali\" ref =" + this.id + "><i class=\"fa fa-male text-green\"></i>&nbsp;" + this.name + "</a></li>";
                                        }
                                        $(".person").append(li)
                                    });

                                }
                            });
                        }
                    };
                    $('#mypage').bootstrapPaginator(options);//设置分页

                }
            });


            //记录分页
            pageStart();//开始分页

            function pageStart() {//分页函数

                $.ajax({ //去后台查询第一页数据
                    type: "GET",
                    url: "/contact/listitem",
                    dataType: "json",
                    data: {pageNo: 1},	//参数：当前页为1
                    success: function (data) {
                        var template = $('#template2').html();
                        /*Mustache.parse(template);*/
                        $(".person2").html("");
                        $(data.pageList).each(function () {
                            var rendered = Mustache.render(template,this);
                            $(".person2").append(rendered)
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
                                    url: "/contact/listitem",
                                    type: "get",
                                    dataType: "json",
                                    data: {pageNo: page},
                                    success: function (data) {
                                        var template = $('#template2').html();
                                        //Mustache.parse(template);
                                        $(".person2").html("");
                                        $(data.pageList).each(function () {
                                            var rendered = Mustache.render(template,this);
                                            $(".person2").append(rendered)
                                        });

                                    }
                                });
                            }
                        };
                        $('#mypage1').bootstrapPaginator(options);//设置分页

                    }

                });




                $.ajax({
                    url: "/contact/findById",
                    type: "GET",
                    dataType: "json",
                    data: {id: 1},
                    success: function (json) {

                        var template = $('#template').html();

                        Mustache.parse(template);
                        $(".dt").html("");

                        var rendered = Mustache.render(template, json);

                        $(".dt").append(rendered);

                    }
                });
                $.ajax({
                    url: "/contact/findById",
                    type: "GET",
                    dataType: "json",
                    data: {id: 1},
                    success: function (json) {

                        var template1 = $('#template1').html();

                        Mustache.parse(template1);
                        $(".head").html("");
                        var rendered = Mustache.render(template1, json);

                        $(".head").append(rendered);

                    },
                });


            }

            $(".person").on("click", ".ali", function () {
                var id = $(this).attr("ref");
                console.log(id);
                $.get("/contact/findById", {id: id}, function (json) {
                    var template1 = $('#template1').html();
                    Mustache.parse(template1);
                    $(".head").html("");
                    var rendered = Mustache.render(template1, json);
                    $(".head").append(rendered);

                    var template = $('#template').html();
                    Mustache.parse(template);
                    $(".dt").html("");
                    var rendered1 = Mustache.render(template, json);
                    $(".dt").append(rendered1);
                });
            });


            $(".person").on("click", ".ali", function () {
                var id = $(this).attr("ref");
                $(".contactId").val(id);
                //$(".contactId").attr("value",id);

                $.get("/contactnote/findById", {id: id}, function (json) {
                    //console.log(json);
                    var template2 = $('#template2').html();
                    Mustache.parse(template2);
                    $(".record").html("");
                    $(json).each(function () {
                        var rendered = Mustache.render(template2, this);
                        $(".record").append(rendered);

                    });

                });
            });


            $("#del").click(function () {
                if (confirm("确定要删除该联系人吗？")) {
                    window.location.href = "/contact/del";
                    return true;
                }
                return false;
            })

        }
    })
</script>

</body>
</html>
