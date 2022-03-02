<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>个人信息</title>
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
  	 <h3>个人信息<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="margin-left: 15px">
     修改个人信息</button></h3>
  					
   
    		<table class="table" >
                    <tbody>
                        <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	姓名:
                            </td>
                            <td style="font-size: 20px">
                               ${students.sname}
                            </td>
                            <td>
                                                     
                        </tr>
                        
                        <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	学号:
                            </td>
                            <td style="font-size: 20px">
                               ${students.studentid }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                        <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	性别:
                            </td>
                            <td style="font-size: 20px">
                               ${students.sex }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                        <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	出生日期:
                            </td>
                            <td style="font-size: 20px">
                               ${students.birth }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                        <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	地址:
                            </td>
                            <td style="font-size: 20px">
                               ${students.place }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                        <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	邮箱:
                            </td>
                            <td style="font-size: 20px">
                               ${students.smail }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                          <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	手机号:
                            </td>
                            <td style="font-size: 20px">
                               ${students.sphone }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                          <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	家长邮箱:
                            </td>
                            <td style="font-size: 20px">
                               ${students.pmail }
                            </td>
                            <td>
                                                     
                        </tr>
                           
                                           
                        
                        
                          <tr class="unread checked">
                           
                            <td class="hidden-xs" style="font-size: 20px">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs" style="font-size: 20px">
                               	家长手机号:
                            </td>
                            <td style="font-size: 20px">
                               ${students.ptele }
                            </td>
                            <td>
                                                     
                        </tr>
                        
                        
                          
                        
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
								<h2 class="modal-title">修改个人信息</h2>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" method="post" action="<%=Const.ROOT%>students/xiumy">
								<input type="hidden" name="id"  value=" ${students.id}">
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">姓名：</label>
									<div class="col-sm-8">
										<input type="test" name="sname" class="form-control1"  value=" ${students.sname}">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">学号：</label>
									<div class="col-sm-8">
										<input type="test" name="studentid" class="form-control1"  pattern="^\d{m,n}$" value= "${students.studentid}">
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
										<input type="test" name="place" class="form-control1"  value=" ${students.place }">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">邮箱：</label>
									<div class="col-sm-8">
										<input type="test" name="smail" class="form-control1"  value=" ${students.smail }">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">手机号：</label>
									<div class="col-sm-8">
										<input type="test" name="sphone" oninput="value=value.replace(/[^\d]/g,'')" class="form-control1"  value=" ${students.sphone }">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">家属邮箱：</label>
									<div class="col-sm-8">
										<input type="test" name="pmail" class="form-control1"  value=" ${students.pmail }">
									</div>
									
								</div>
								
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label" style="width: 130px">家属手机号：</label>
									<div class="col-sm-8">
										<input type="test" name="ptele" oninput="value=value.replace(/[^\d]/g,'')" class="form-control1"  value=" ${students.ptele }">
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

<script type="text/javascript">
			$(function(){
			        $("#btns").click(function(){
			        	
			            var repwd=$("#checkpassword").get(0);
			            if($("#checkpassword").val()!=$("#password").val()){
			                repwd.setCustomValidity("两次密码要一致");
			            }else{
			                repwd.setCustomValidity("");
			            }
			
			        });
			 });


</script>

</body>
</html>
