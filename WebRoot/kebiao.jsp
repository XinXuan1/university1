<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>学习进度查询</title>
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
  	 <h3>学习进度查询</h3>
  	 
  	 <form action="<%=Const.ROOT%>students/studyAccess" method="post">
                <div class="input-group">
                   <select   name="tsid" required >
										<option value="" selected="selected">请选择学期</option>										
										 <c:forEach items="${tlist}" var="item1">
										<option <c:if test="${tsid==item1.id }">selected</c:if> value="${item1.id}">${item1.tename}</option>
										 </c:forEach>
										</select>
                    
                    
                        <button class="btn btn-success" style="position:relative;left: 30px"" type="submit"><i class="fa fa-search"></i></button>                  
                    
                </div><!-- Input Group -->
            </form>
  					
   <table class="table table-bordered">
        <thead>
          <tr>
            <th style="vertical-align:middle;text-align: center;">序号</th>
            <th style="vertical-align:middle;text-align: center;">课程名称</th>
            <th style="vertical-align:middle;text-align: center;">课程类型</th>
            <th style="vertical-align:middle;text-align: center;">任课老师</th>
            <th style="vertical-align:middle;text-align: center;">周数</th>
            <th style="vertical-align:middle;text-align: center;">星期数</th>
            <th style="vertical-align:middle;text-align: center;">上课地点</th>
            <th style="vertical-align:middle;text-align: center;">上课节数</th>
             <th style="vertical-align:middle;text-align: center;">学期数</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${plist}" var="item" varStatus="st">
          <tr>
            <th scope="row" style="vertical-align:middle;text-align: center;">${st.count}</th>
            <td  style="vertical-align:middle;text-align: center;">${item.cname}</td>
            <td style="vertical-align:middle;text-align: center;">${item.ctype}</td>  
            <td style="vertical-align:middle;text-align: center;">${item.tname}</td>   
            <td style="vertical-align:middle;text-align: center;">${item.btime}-${item.etime}周</td>
            <td style="vertical-align:middle;text-align: center;">${item.weeks}</td>
            <td style="vertical-align:middle;text-align: center;">${item.cplace}</td>
            <td style="vertical-align:middle;text-align: center;">${item.classnum}</td>
            <td style="vertical-align:middle;text-align: center;">${item.tename}</td>    
          </tr>
   		</c:forEach>
        </tbody>
      </table>
    		
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
