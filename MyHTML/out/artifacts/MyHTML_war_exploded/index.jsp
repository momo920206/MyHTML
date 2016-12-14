<%@ page import="javafx.scene.control.Alert" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title style="font-family:'Times New Roman'">&hearts;Welcome to Artemis Zone&hearts;</title>
    <!--引入bootstrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- 可选的Bootstrap主题文件-->
    <script src="css/bootstrap-theme.min.css"></script>
    <!--引入JQuery-->
    <script src="js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
      <script>
          function sug() {
              alert("请使用谷歌浏览器Chrome或者火狐浏览器打开本网站！╮(╯▽╰)╭，对！！就是怎么任性！！")
          }
      </script>
      <style type="text/css">
          @font-face {
              font-family: RBNo2Light;
              src: url("fonts/RBNo2Light.otf");
          }
        @font-face {
            font-family: tiza;
            src: url("fonts/tiza.ttf");
        }
        @font-face {
            font-family: You\'\re Gone;
            src:url("fonts/You're Gone.ttf")
        }
          a:link{color: #ff386c}
          a:visited{color: #ff386c}
      </style>
  </head>
  <body onLoad="sug()">
<canvas id="c_n15" width="100%" height="100%"
          style="position: fixed; top: 0px; left: 0px; z-index: -1; opacity: 0.5;">
  </canvas>
<div id="titleTag" style="width: 1000px;margin-left: 300px;margin-top: 150px" >
    <p style="font-family:tiza; font-size:30px; color:pink;">Welcome to Aretemis Zone!╮(╯3╰)╭ &hearts;<p>
</div>
<div style="width: 400px; height: 200px; margin-left: 450px; margin-top: 100px; text-align: center;"; class="img-rounded" >
<form id="info" style="height:200px; width:600px; margin-left: 30px" action="index.jsp" method="post">
      <table width="600px" border="0" align="right";height="150px" style=" margin-top:30px">
        <tr>
          <td width="80" height="60" style="font-size: 20px; font-family: 幼圆;color: #81cfff;">用户名</td>
          <td width="120" style="font-size: 20px;color: #81cfff">（UserName）：</td>
          <td width="206"><input class="form-control" type="text" name="userName" id="userName" width="200px" height="20px" title="请输入用户名，字符不超过8位" size="16"></td>
            <td style="color:#ff386c">&nbsp;&hearts;～(￣▽￣～)</td>
        </tr>
        <tr>
          <td width="80" height="60" style="font-size: 20px; font-family: 幼圆;color: #81cfff">密&nbsp;&nbsp;码</td>
          <td width="120" style="font-size: 20px;color: #81cfff">（PassWord）：</td>
          <td><input class="form-control" type="password" name="password" id="psw" width="200px" height="20px" title="请输入密码，密码不少于6位且不大于16位" size="16"></td>
            <td style="color:#ff386c" style="font-family: 幼圆"><a href="Forgive.jsp">&nbsp;忘记密码（ˋ︿ˊ﹀-#</a></td>
        </tr>
        <tr>
          <td colspan="2" height="60"><center>
            <input type="submit" name="submut" id="submut" value="登&nbsp;&nbsp;录" style="margin-left:150px" class="btn btn-success" />
          </center></td>
          <td><center>
            <input type="button" name="creatNew" id="creatNew" value="注&nbsp;&nbsp;册" style="margin-right:10px" class="btn btn-warning" />
          </center></td>
        </tr>
      </table>
    </center></td>
  </tr>
  </table>
</form>
</div>
<script type="text/javascript" color="254,0,127" zindex="-1" opacity="2" count="99"
          src="js/canvas-nest.min.js">
</script>
<div style="margin-left: 600px">
<%
    String name=request.getParameter("userName");
    String password=request.getParameter("password");
    if(!(name==null || "".equals(name) || password==null || "".equals(password)))
    {
        if("Artemis".equals(name) && "momo123".equals(password))
        {
            response.setHeader("refresh","3;URL=LoginSuccess.jsp");
          %>
                <p style="font-family:You\'\re Gone; font-size:20px; color:#ff386c; margin-top: 10px">Bingo!!↖(▔▽▔)↗ 3秒跳转！<img src="img/2016517111241939.gif" style="width: 50px;height: 50px;"/><p>
            <%
            session.setAttribute("user",name);
            %>
<%
        }else{
            %>
                 <p style="font-family:You\'\re Gone; font-size:20px; color: #ff386c;  margin-top: 10px">Error!!。_。账户或密码错误！！<img src="img/2016517111241939.gif" style="width: 50px;height: 50px;"/><p>
<%
        }
    }
%>
    </div>
</body>
</html>
