<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>学生自我鉴定</title>
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
  	 <h3>学生自我鉴定</h3>
  	 
  	 
  					
   <table class="table table-bordered">
        <thead>
          <tr>
            <th style="vertical-align:middle;text-align: center;">序号</th>
            <th style="vertical-align:middle;text-align: center;">学生姓名</th>
            <th style="vertical-align:middle;text-align: center;">自我鉴定</th>
            <th style="vertical-align:middle;text-align: center;">邮箱</th>
             <th style="vertical-align:middle;text-align: center;">发送邮件</th>
          </tr>
        </thead>
        <tbody>
		 <c:forEach items="${slist}" var="item" varStatus="st">
          <tr>
            <th scope="row" style="vertical-align:middle;text-align: center;">${st.count}</th>
            <td  style="vertical-align:middle;text-align: center;">${item.sname}</td>
            <td  style="vertical-align:middle;text-align: center;">${item.myself}</td>
            <td  style="vertical-align:middle;text-align: center;">${item.smail}</td>
            <td style="vertical-align:middle;text-align: center;"><button type="button" onclick="fuzhi(${item.id})" class="btn btn-primary" data-toggle="modal" data-target="#myModal-up">发送邮件</button></td>    
          </tr>
   		</c:forEach>
        </tbody>
      </table>
    		
  		</div>
  </div>
  
           
           <div class="bs-example2 bs-example-padded-bottom">

     <div class="modal fade" id="myModal-up" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h2 class="modal-title">发送邮件</h2>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" method="post" action="<%=Const.ROOT%>teacher/allmyself" >
									<input type="hidden" class="form-control1" id="ids" name="id">
									
								
								
							<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">内容</label>
									<div class="col-sm-8">
										  <textarea class="span8" id="myself" cols="50" rows="10"></textarea>	          
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
