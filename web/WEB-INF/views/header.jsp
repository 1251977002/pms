
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>PMS</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>森森pms</b></span>
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
            <li class="${(param.menu eq 'project') ? 'active' : ''}">
                <a href="#">
                    <i class="glyphicon glyphicon-home"></i> <span>最新动态</span>
                </a>

            </li>
            <li class="treeview ${(param.menu eq 'goal') ? 'active' : ''}">
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
            <li class="treeview ${(param.menu eq 'document') ? 'active' : ''}">
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
            <li class="treeview ${(param.menu eq 'file') ? 'active' : ''}">
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
            <li class="treeview ${(param.menu eq 'contact') ? 'active' : ''}">
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
            <li class="treeview ${(param.menu eq 'idea') ? 'active' : ''}">
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

