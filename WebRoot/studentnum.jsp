<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>学生统计</title>
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
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="<%=Const.ROOT%>js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">学生成绩管理系统</a>
            </div>
            <!-- /.navbar-header -->
            
			
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                   <%@include file="menu.jsp"%>
                   </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs" style="background-color: #fff">
	   <div class="xs">
  	 <h3>学生统计
  	 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="margin-left: 15px">
     新增学生</button>
  	 </h3>
  					
   <table class="table table-bordered">
        <thead>
          <tr>
            <th style="vertical-align:middle;text-align: center;">序号</th>
            <th style="vertical-align:middle;text-align: center;">专业班级</th>
            <th style="vertical-align:middle;text-align: center;">学生个数</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${slist}" var="item" varStatus="st">
          <tr>
            <th scope="row" style="vertical-align:middle;text-align: center;">${st.count}</th>
            <td  style="vertical-align:middle;text-align: center;">${item.dname}</td>
            <td style="vertical-align:middle;text-align: center;">${item.num}</td>    
          </tr>
   		</c:forEach>
        </tbody>
      </table>
    		
  		</div>
  </div>
  
<div class="bs-example2 bs-example-padded-bottom">

     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h2 class="modal-title">新增学生</h2>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" method="post" action="<%=Const.ROOT%>user/addstudent" >
									
								
													
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">账户名：</label>
									<div class="col-sm-8">
											<input type="test" name="username" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">密码：</label>
									<div class="col-sm-8">
											<input type="password" name="password" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">姓名：</label>
									<div class="col-sm-8">
										<input type="test" name="sname" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">学号：</label>
									<div class="col-sm-8">
										<input type="test" name="studentid"  pattern="^\d{1,6}$"  class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">专业年级：</label>
									<div class="col-sm-8">
										<select   name="did" required>
										
										<option value="-1" selected="selected">请选择</option>	
										<c:forEach items="${dlist}" var="item1" varStatus="st">									
										<option value="${item1.id}">${item1.dname}</option>
										</c:forEach>											
										</select>
									</div>
									
								</div>
								
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">性别：</label>
									<div class="col-sm-8">
										<select   name="sex" required>
										<option value="-1" selected="selected">请选择</option>										
										<option value="男">男</option>
										<option value="女">女</option>											
										</select>
									</div>
									
								</div>
								
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">出生日期：</label>
									<div class="col-sm-8">
										 <input type="date" name="birth" class="form-control1 ng-invalid ng-invalid-required" ng-model="model.date" required=""  style="width: 180px">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">出生地：</label>
									<div class="col-sm-8">
										<input type="test" name="place" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">邮箱：</label>
									<div class="col-sm-8">
										<input type="test" name="smail" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">手机号：</label>
									<div class="col-sm-8">
										<input type="test" name="sphone" oninput="value=value.replace(/[^\d]/g,'')" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">家属邮箱：</label>
									<div class="col-sm-8">
										<input type="test" name="pmail" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">家属手机号：</label>
									<div class="col-sm-8">
										<input type="test" name="ptele" oninput="value=value.replace(/[^\d]/g,'')" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="modal-footer">				
								<button type="submit" id="btns" class="btn btn-primary">提交</button>
								</div>
								</form>
                            </div>
							
						</div><!-- /.modal-content -->
					</div><!-- /.modal-dialog -->
				</div>
           </div>
 
  
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="<%=Const.ROOT%>css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=Const.ROOT%>js/metisMenu.min.js"></script>
<script src="<%=Const.ROOT%>js/custom.js"></script>
</body>
<script type="text/javascript">


</script>



</html>
