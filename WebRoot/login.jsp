<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="<%=Const.ROOT%>css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=Const.ROOT%>css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=Const.ROOT%>css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="<%=Const.ROOT%>js/jquery.min.js"></script>
<!----webfonts--->

<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="<%=Const.ROOT%>js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
   <a href="#" style="text-decoration: none;font-size: 30px">学生成绩管理系统</a>
  </div>
  <h2 class="form-heading">login</h2>
  <div class="app-cam">
	  <form method="post" action="<%=Const.ROOT%>user/login">
		<input type="text" name="username" class="text" />
		<input type="password" name="password" />
		<div class="col-md-12">
				<label for="text">登录身份：</label>
				<select   name="role" required>
				<option value="-1" selected="selected">请选择身份</option>
				<option value="1">学生</option>
				<option value="2">教师</option>
				<option value="3">管理员</option>
				</select>
		</div>
		<div class="submit">
		<input type="submit"  value="登录">
		</div>
		
	</form>
  </div>
   <div class="copy_layout login">
   </div>
</body>
</html>
