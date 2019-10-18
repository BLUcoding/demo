<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Multi Step Registration Form Template</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/1.css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

<!-- Top menu -->
<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#top-navbar-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Bootstrap Multi Step Registration Form Template</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="top-navbar-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
						<span class="li-text">
							点击这里会有
						</span>
                    <a href="#"><strong>惊喜</strong></a>
                    <span class="li-text">
							加油！！
						</span>
                    <span class="li-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-envelope"></i></a>
							<a href="#"><i class="fa fa-skype"></i></a>
						</span>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>1712041003</strong> 实验四项目</h1>
                    <div class="description">
                        <p>
                            每次进行操作时，先点击添加，修改，删除按钮，否则按钮没用，然后点击表格中的数据，即可进行操作，然后点击确定。即可完成！！！！
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-11 form-box registration-form">

                        <fieldset id="con1">

                            <div class="form-top field-first">

                                <table class="table table-striped table-hover table-bordered" id="mytable">
                                    <tr>
                                        <th>姓名</th>
                                        <th>电话号码</th>
                                        <th>用户信息</th>

                                    </tr>
                                    <tr value="1">
                                        <td class="name">里飞行</td>
                                        <td class="tel">15651921039</td>
                                        <td class="inf">带劲啊，我是joker sdhjsa</td>
                                    </tr>
                                </table>

                                <div class="fun">

                                    <div class="form-group">
                                        <label for="name">姓名</label>
                                        <input type="text" class="form-control" id="name" placeholder="请输入姓名">
                                    </div>


                                    <div class="form-group">
                                        <label for="tel">电话</label>
                                        <input type="number" class="form-control" id="tel" placeholder="请输入电话">
                                    </div>


                                    <div class="form-group">
                                        <label for="infomation">信息</label>
                                        <input type="text" class="form-control" id="infomation"
                                               placeholder="请输人信息">
                                    </div>


                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default" id="sure">确定</button>
                                        </div>
                                    </div>

                                </div>
                                <div>
                                    <button type="button" class="btn btn-info kk" value="1">查看用户信息</button>
                                    <button type="button" class="btn btn-info kk" value="2">添加用户</button>
                                </div>

                                <div>
                                    <button type="button" class="btn btn-info kk" value="3">修改用户</button>
                                    <button type="button" class="btn btn-info kk" value="4">删除用户</button>
                                </div>

                            </div>

                        </fieldset>
                        <fieldset id="con2">
                            <div class="form-top">
                                <div class="jumbotron">
                                    <h1 id="caozuo">操作成功</h1>
                                </div>

                                <button type="submit" class="btn" id="back">返回</button>
                            </div>
                        </fieldset>

                </div>
            </div>
        </div>
    </div>

</div>
<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
<script src="assets/js/scripts.js"></script>

</body>

</html>