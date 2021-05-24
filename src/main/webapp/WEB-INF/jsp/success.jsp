<%--
  Created by IntelliJ IDEA.
  User: swg
  Date: 2017/10/5
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/head.jsp" %>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>提示页面</h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="clearfix"></div>
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <div align="center" style="background-color: #fff">
                            <div class="demobox" style="width: 1200px; padding: 30px;">
                                <h3><font color="#006400">修改密码成功！</font></h3><br>
                                <a href="${pageContext.request.contextPath}/userManager/login"><span id="time">5</span>秒后系统会自动跳转到登陆页面，也可点击本处直接跳转哦</a>
                                <script type="text/javascript">
                                    $(document).ready(function(){
                                        delayURL("${pageContext.request.contextPath}/userManager/login");
                                    })

                                    function delayURL(url) {
                                        var delay = document.getElementById("time").innerHTML;
                                        if (delay > 0) {
                                            delay--;
                                            document.getElementById("time").innerHTML = delay
                                        } else {
                                            window.top.location.href = url
                                        }
                                        setTimeout("delayURL('" + url + "')", 1000)
                                    }
                                </script>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="pull-right">
        <i class="fa fa-copyright"></i> 2017 蜗牛生活 版权所有
    </div>
    <div class="clearfix"></div>
</footer>
</div>
</div>
<script src="${pageContext.request.contextPath}/static/bootstrap/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/frame/gentelella/js/custom-msms.js"></script>


</body>
</html>
