<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>register</title>

    <link href="resources/plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="resources/plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
    <link href="resources/plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
    <link href="resources/plugins/checkbix/css/checkbix.min.css" rel="stylesheet"/>
    <link href="resources/css/login.css" rel="stylesheet"/>
    <link href="resources/css/animate.css" rel="stylesheet"/>
    <link href="resources/css/bootstrap-select.css" rel="stylesheet"/>
</head>
<body>
<div  id="login-window" class="container" style="height: 51.3%">

    <div class="input-group m-b-20 row">

			<span class="input-group-addon">
				<i class="zmdi zmdi-account"></i>
			</span>

        <transition
                name="fade"
                enter-active-class="animated swing"
                leave-active-class="animated swing "
        >
            <div class="fg-line col-xs-8" v-show="isShow">
                <input  id="userNo" type="text" class="form-control" name="userNo" value="${requestScope.userNo}" placeholder="账号" required autofocus >
            </div>
        </transition>

    </div>
    <div class="input-group m-b-20 row">

		<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
		</span>
        <transition
                name="fade"
                enter-active-class="animated swing"
                leave-active-class="animated swing "
        >
            <div class="fg-line  col-xs-8" v-show="isShow">
                <input id="password" type="password" class="form-control" name="password" value="${requestScope.password}" placeholder="密码" required >
            </div>
        </transition>
    </div>
    <div class="input-group m-b-20 row">

		<span class="input-group-addon">
			<i class="glyphicon glyphicon-phone-alt"></i>
		</span>
        <transition
                name="fade"
                enter-active-class="animated swing"
                leave-active-class="animated swing "
        >
            <div class="fg-line  col-xs-8" v-show="isShow">
                <input id="phoneNumber" type="text" class="form-control" name="phoneNumber" value="${requestScope.phoneNumber}" placeholder="手机号"  required >
            </div>
        </transition>
    </div>
    <div class="input-group m-b-20 row">

		<span class="input-group-addon">
			<i class="zmdi zmdi-male"></i>
		</span>
        <transition
                name="fade"
                enter-active-class="animated swing"
                leave-active-class="animated swing "
        >
            <div class="fg-line  col-xs-8" v-show="isShow">
                <input id="IDCard" type="text" class="form-control" name="IDCard" value="${requestScope.IDCard}" placeholder="身份证" required >
            </div>
        </transition>
    </div>
    <div class="input-group m-b-20 row">
        <div class="select_btn">
            <span>请选择性别：</span>
            &nbsp;男&nbsp;<input id="sex1" type="radio" checked="checked" name="sex" value="1" />
            &nbsp;女&nbsp;<input id="sex2" type="radio" name="sex" value="0" />
            <button class="btn question" data-toggle="modal" data-target="#myModal">添加密保问题</button>
        </div>


    </div>


    <div class="clearfix row">
    </div>
    <div class="checkbox row">
        <div class="col-md-1 col-md-push-10" v-show="isShow">
            <button type="button" class="btn btn-default register" data-text="已有账号，前去登陆" name="register" onclick="window.open('login.jsp')">
                <!--<a  href="login.html">已有账号，前去登陆</a>-->
                已有账号，前去登陆
            </button>
        </div>

    </div>
    <a @click="registBtnClick" id="login-bt" href="javascript:;" class="waves-effect waves-button waves-float"><i class="zmdi zmdi-arrow-forward"></i></a>
</div>

<!--密保问题-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加密保问题</h4>
            </div>
            <div class="modal-body">
                <!--第一组密保问题开始-->
                <select class="selectpicker" data-live-search="true" name="question" id="question">
                    <option value="1">您母亲的姓名</option>
                    <option value="2">您父亲的姓名</option>
                    <option value="3">您的出生年月</option>
                    <option value="4">您配偶的生日是？</option>
                    <option value="5">您的学号（或工号）是？</option>
                </select>
                <input type="text" class="form-control" id="answer" name="answer" placeholder="第一个密保问题答案" style="margin-bottom: 10px" value="${requestScope.answer}">
                <!--第一组密保问题结束-->

                <!--第二组密保问题-->
                <select class="selectpicker" data-live-search="true">
                    <option value="1">您高中班主任的名字是？</option>
                    <option value="2">您小学班主任的名字是？</option>
                    <option value="3">您父亲的生日是？</option>
                    <option value="4">您配偶的姓名是？</option>
                    <option value="5">您初中班主任的名字是？</option>
                </select>
                <input type="text" class="form-control" id="second_question" placeholder="第二个密保问题答案" style="margin-bottom: 10px">
                <!--第二组密保问题结束-->

                <!--第三组密保问题开始-->
                <select class="selectpicker" data-live-search="true">
                    <option value="1">您最熟悉的童年好友名字是？</option>
                    <option value="2">您最熟悉的学校宿舍舍友名字是？</option>
                    <option value="3">对您影响最大的人名字是？</option>
                    <option value="4">您目前的姓名是？</option>
                    <option value="5">您大学辅导员的姓名是？</option>
                </select>
                <input type="text" class="form-control" id="third_question" placeholder="第三个密保问题答案" style="margin-bottom: 10px">
                <!--第三组密保问题结束-->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script src="resources/plugins/jquery.1.12.4.min.js"></script>
<script src="resources/plugins/bootstrap-3.3.0/js/bootstrap.min.js"></script>
<script src="resources/plugins/waves-0.7.5/waves.min.js"></script>
<script src="resources/plugins/checkbix/js/checkbix.min.js"></script>
<script src="resources/js/vue.js"></script>
<script src="resources/js/login.js"></script>
<script src="resources/js/bootstrap-select.min.js"></script>
<script src="resources/js/defaults-zh_CN.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
<script type="text/javascript">

    Checkbix.init();

</script>


</body>
</html>