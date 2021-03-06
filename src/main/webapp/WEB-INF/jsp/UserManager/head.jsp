<%--
  Created by IntelliJ IDEA.
  User: XJL
  Date: 2017/10/24
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>oursnail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="/statics/head/css/style.css">
    <link rel="stylesheet" type="text/css" href="/statics/head/css/themes/flat-blue.css">
</head>

<body class="flat-blue">
<div class="app-container">
    <div class="row content-container">
        <nav class="navbar navbar-default navbar-fixed-top navbar-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-expand-toggle">
                        <i class="fa fa-bars icon"></i>
                    </button>
                    <ol class="breadcrumb navbar-breadcrumb">
                        <li class="active">??????</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-times icon"></i>
                    </button>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="title">
                                Notification <span class="badge pull-right">0</span>
                            </li>
                            <li class="message">
                                No new notification
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown danger">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
                        <ul class="dropdown-menu danger  animated fadeInDown">
                            <li class="title">
                                Notification <span class="badge pull-right">4</span>
                            </li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge">1</span> <i class="fa fa-exclamation-circle icon"></i> new registration
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge success">1</span> <i class="fa fa-check icon"></i> new orders
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge danger">2</span> <i class="fa fa-comments icon"></i> customers messages
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item message">
                                            view all
                                        </li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Emily Hart <span class="caret"></span></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                            </li>
                            <li>
                                <div class="profile-info">
                                    <h4 class="username">Emily Hart</h4>
                                    <p>emily_hart@email.com</p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default"><i class="fa fa-user"></i> Profile</button>
                                        <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> Logout</button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="side-menu sidebar-inverse">
            <nav class="navbar navbar-default" role="navigation">
                <div class="side-menu-container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <div class="icon fa fa-paper-plane"></div>
                            <div class="title">????????????????????????</div>
                        </a>
                        <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index.html">
                                <span class="icon fa fa-tachometer"></span><span class="title">??????</span>
                            </a>
                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element">
                                <span class="icon fa fa-desktop"></span><span class="title">??????</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a href="ui-kits/theming.html">????????????</a>
                                        </li>

                                        <li><a href="ui-kits/theming.html">????????????</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>


                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-table">
                                <span class="icon fa fa-table"></span><span class="title">????????????</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-table" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a href="table/table.html">?????????</a>
                                        </li>
                                        <li><a href="table/datatable.html">????????????</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >??????????????????</a></div>
        <!-- Main Content -->

        </div>
    </div>
    <footer class="app-footer">
        <div class="wrapper">
            <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> ?? 2015 Copyright. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="????????????">????????????</a> - Collect from <a href="http://www.cssmoban.com/" title="????????????" target="_blank">????????????</a>
        </div>
    </footer>
    <div>
        <!-- Javascript Libs -->
        <script type="text/javascript" src="/statics/head/lib/js/jquery.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/Chart.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/bootstrap-switch.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/jquery.matchHeight-min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/select2.full.min.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/ace/ace.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/ace/mode-html.js"></script>
        <script type="text/javascript" src="/statics/head/lib/js/ace/theme-github.js"></script>
        <!-- Javascript -->
        <script type="text/javascript" src="/statics/head/js/app.js"></script>
        <script type="text/javascript" src="/statics/head/js/index.js"></script>
</body>

</html>
