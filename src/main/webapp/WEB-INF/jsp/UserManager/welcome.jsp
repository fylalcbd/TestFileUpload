<%--
  Created by IntelliJ IDEA.
  User: xjl
  Date: 2017/11/14
  ${pageContext.request.contextPath}
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <style>body{padding-top: 60px;}</style>

    <link href="${pageContext.request.contextPath}/statics/bootstrap3/css/bootstrap.css" rel="stylesheet" />

    <link href="${pageContext.request.contextPath}/statics/login-register.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

    <script src="${pageContext.request.contextPath}/statics/jquery/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/statics/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/statics/login-register.js" type="text/javascript"></script>
</head>
<body>


<br><br><br><br>


<div class="container" style="padding-top:200px ">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">登陆</a>
            <a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">注册</a>
        </div>
        <div class="col-sm-4"></div>
    </div>


    <div class="modal fade login" id="loginModal">
        <div class="modal-dialog login animated">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Login with</h4>
                </div>
                <div class="modal-body">
                    <div class="box">
                        <div class="content">
                            <div class="social">
                                <a class="circle github" href="/auth/github">
                                    <i class="fa fa-github fa-fw"></i>
                                </a>
                                <a id="google_login" class="circle google" href="/auth/google_oauth2">
                                    <i class="fa fa-google-plus fa-fw"></i>
                                </a>
                                <a id="facebook_login" class="circle facebook" href="/auth/facebook">
                                    <i class="fa fa-facebook fa-fw"></i>
                                </a>
                            </div>
                            <div class="division">
                                <div class="line l"></div>
                                <span>or</span>
                                <div class="line r"></div>
                            </div>
                            <div class="error"></div>
                            <div class="form loginBox">
                                <form id="loginForm" method="post" action="" accept-charset="UTF-8">
                                    <input id="lusername" class="form-control" type="text" placeholder="用户名" name="username">
                                    <input id="lpassword" class="form-control" type="password" placeholder="密码" name="password">
                                    <input id="userlogin" class="btn btn-default btn-login" type="button" value="登陆" >
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="content registerBox" style="display:none;">
                            <div class="form">
                                <form id="registerForm" method="post" html="{:multipart=>true}" data-remote="true" action="" accept-charset="UTF-8">
                                    <input id="rusername" class="form-control" type="text" placeholder="Username" name="username">
                                    <input id="remail" class="form-control" type="text" placeholder="Email" name="email">
                                    <input id="rpassword" class="form-control" type="password" placeholder="Password" name="password">
                                    <input id="rpassword_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation">
                                    <input id="userRegister" class="btn btn-default btn-register" type="button" value="注册" >
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="forgot login-footer">
                            <span>Looking to
                                 <a href="javascript: showRegisterForm();">create an account</a>
                            ?</span>
                    </div>
                    <div class="forgot register-footer" style="display:none">
                        <span>Already have an account?</span>
                        <a href="javascript: showLoginForm();">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
     var LOGIN={

         dologin:function(){
             //alert("${pageContext.request.contextPath}");

           $.post("${pageContext.request.contextPath}/userManager/login",$("#loginForm").serialize(),function (data) {
               location.href ="${pageContext.request.contextPath}/UserManager/head";
           });

             /*$.post("/user/login", $("#formlogin").serialize(),function(data){
                 if (data.status == 200) {
                     alert("登录成功！");
                     if (redirectUrl == "") {
                         location.href = "http://www.taotao.com";
                     } else {
                         location.href = redirectUrl;
                     }
                 } else {
                     alert("登录失败，原因是：" + data.msg);
                     $("#loginname").select();
                 }
             });*/

         },
         checkinput:function(){
             if($("#lusername").val()==""){
                 alert("用户名不能为空！")
                 $("#lusername").focus();
                 return false;
             }

             if($("#lpassword").val()==""){
                 alert("密码不能为空！");
                 $("#lpassword").focus();
                 return false;
             }
             return true;

         },
         login:function(){
             if(this.checkinput()){
                // alert("check finish");
                 this.dologin();
             }
         }
     };


   $(function () {
       $("#userlogin").click(function(){
        alert("wwwww")
           LOGIN.login();

       });
   });


         var REGISTER={
            reg:function () {
               // alert("doreg");
                if(this.inputCheck()){
                    this.beforeSubmit();
                }

            },

             inputCheck:function () {
                //alert("doinputCheck");
                 if($("#rusername").val()==""){
                     alert("用户名不能为空！");
                     $("#rusername").focus();
                     return false;
                 }
                if($("#remail").val()==""){
                    alert("邮箱不能为空！");
                    $("#remail").focus();
                    return false;
                }
                if($("#rpassword").val()==""){
                    alert("密码不能为空！");
                    $("#rpassword").focus();
                    return false;
                }
                if($("#rpassword_confirmation").val()==""){
                     alert("确认密码不能为空！");
                     $("#rpassword_confirmation").focus();
                     return false;
                 }

                if ($("#rpassword").val()!=$("#rpassword_confirmation").val()){
                    alert("密码不一致,请重新输入！");
                    $("#rpassword_confirmation").select();
                    $("#rpassword_confirmation").focus();
                    return false;
                }

                    return true;

             },

             beforeSubmit:function () {


                 //用户检查
                 $.ajax({
                     url:"${pageContext.request.contextPath}/register/check/"+escape($("#rusername").val())+"/1?r="+Math.random(),
                     success:function (data) {
                         if(data.code==200){
                             //邮箱检查
                             $.ajax({
                                 url:"${pageContext.request.contextPath}/register/check/"+$("#remail").val()+"/2?r="+Math.random(),
                                 success:function (data) {
                                     if(data.code==200){
                                         REGISTER.doSubmit();
                                     }else {
                                         alert("此邮箱以被注册！");
                                         $("#remail").select();
                                     }

                                 }

                             })
                         }else {
                             alert("此用户名以存在！");
                             $("#rusername").select();
                         }

                     }
                 })
             },
             doSubmit:function () {

                 $.post("${pageContext.request.contextPath}/register/register",$("#registerForm").serialize(),function (data) {
                     if(data.state==200){
                         alert("注册成功，返回登陆界面！");
                         showLoginForm();
                     }else {
                         alert(data.msg);

                     }
                 })
             },


             login:function () {
                 $(function () {


                         LOGIN.login();


                 });
                 openLoginModal();
             }

         };

    $("#userRegister").click(function () {

        REGISTER.reg();
    })

</script>


</body>
</html>
