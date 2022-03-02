<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>课程管理</title>
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
  	 <h3>课程管理
  	 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="margin-left: 15px">
     新增课程</button>
  	 </h3>
  					
   <table class="table table-bordered">
        <thead>
          <tr>
            <th style="vertical-align:middle;text-align: center;">序号</th>
            <th style="vertical-align:middle;text-align: center;">课程名称</th>
            <th style="vertical-align:middle;text-align: center;">任课老师</th>
            <th style="vertical-align:middle;text-align: center;">删除</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${clist}" var="item" varStatus="st">
          <tr>
            <th scope="row" style="vertical-align:middle;text-align: center;">${st.count}</th>
            <td  style="vertical-align:middle;text-align: center;">${item.cname}</td>
            <td style="vertical-align:middle;text-align: center;">${item.tname}</td>
            <td style="vertical-align:middle;text-align: center;"><button type="button" onclick="shanchu(${item.id})" class="btn btn-primary">删除</button></td>    
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
								<h2 class="modal-title">新增课程</h2>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" method="post" action="<%=Const.ROOT%>user/addcourse" >
									
								
													
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">课程名：</label>
									<div class="col-sm-8">
											<input type="test" name="cname" class="form-control1"  ">
									</div>
									
								</div>
								
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">任课老师：</label>
									<div class="col-sm-8">
										<select   name="tid" required>
										
										<option value="-1" selected="selected">请选择</option>	
										<c:forEach items="${tlist}" var="item1" varStatus="st">									
										<option value="${item1.id}">${item1.tname}</option>
										</c:forEach>											
										</select>
									</div>
									
								</div>
								
								
								
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">课程学分：</label>
									<div class="col-sm-8">
											<input type="test" name="csore" class="form-control1" >
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">课程类型：</label>
									<div class="col-sm-8">
											<select   name="ctype" required>
										<option value="-1" selected="selected">请选择</option>										
										<option value="必修">必修</option>
										<option value="选修">选修</option>											
										</select>
									</div>
									
								</div>
								
								
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">最大人数：</label>
									<div class="col-sm-8">
										<input type="test" name="maxnumber" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">开始周数：</label>
									<div class="col-sm-8">
										<input type="test" name="btime" class="form-control1"  ">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">结束周数：</label>
									<div class="col-sm-8">
										<input type="test" name="etime" class="form-control1"  ">
									</div>
									
								</div>
								
								
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">星期数：</label>
									<div class="col-sm-8">
										<select   name="weeks" required>
										<option value="-1" selected="selected">请选择</option>										
										<option value="星期一">星期一</option>
										<option value="星期二">星期二</option>
										<option value="星期三">星期三</option>
										<option value="星期四">星期四</option>	
										<option value="星期五">星期五</option>
										<option value="星期六">星期六</option>
										<option value="星期日">星期日</option>										
										</select>
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">学期：</label>
									<div class="col-sm-8">
										<select   name="teid" required>
										
										<option value="-1" selected="selected">请选择</option>	
										<c:forEach items="${telist}" var="item1" varStatus="st">									
										<option value="${item1.id}">${item1.tename}</option>
										</c:forEach>											
										</select>
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">上课节数：</label>
									<div class="col-sm-8">
										<select   name="classnum" required>
										<option value="-1" selected="selected">请选择</option>										
										<option value="上午1-2">上午1-2</option>
										<option value="上午3-4">上午3-4</option>
										<option value="下午5-6">下午5-6</option>
										<option value="上午7-8">上午7-8</option>											
										</select>
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">上课地点：</label>
									<div class="col-sm-8">
										<input type="test" name="cplace" class="form-control1"  ">
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
function shanchu(id){
				$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>user/shanchu",
								data: { id: id },
								success: function(data) {								
									alert("删除成功");
										location.href="<%=Const.ROOT%>user/allke";
									
									
									
									
								}
							});
		
		
		}

</script>



</html>
