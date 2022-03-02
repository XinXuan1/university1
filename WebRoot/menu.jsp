<%@ page import="cn.tools.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
                        <c:if test="${sessionScope.role=='1'}">
                        <li>
                            <a href="<%=Const.ROOT%>students/gradeSelect"><i class="fa fa-table nav_icon"></i>成绩查询<span class="fa arrow"></span></a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                       
                         <li>
                            <a href="<%=Const.ROOT%>students/studyAccess"><i class="fa fa-table nav_icon"></i>学习进度查询<span class="fa arrow"></span></a>
                            
                        </li>
                        
                        
                        <li>
                            <a href="<%=Const.ROOT%>students/studyIdea"><i class="fa fa-table nav_icon"></i>学生培养方案管理<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>students/yujing"><i class="fa fa-table nav_icon"></i>个人指标<span class="fa arrow"></span></a>
                            
                        </li>
                        
                        <li>
                            <a href="<%=Const.ROOT%>students/my"><i class="fa fa-table nav_icon"></i>个人信息<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>students/yujing"><i class="fa fa-table nav_icon"></i>预警管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=Const.ROOT%>students/unpass">不及格成绩</a>
                                </li>
                                <li>
                                    <a href="<%=Const.ROOT%>students/unqualified">不合格指标</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li>
                            <a href="<%=Const.ROOT%>shenhe.jsp"><i class="fa fa-table nav_icon"></i>自我审核<span class="fa arrow"></span></a>
                            
                        </li>
                        
                        </c:if>
                        <c:if test="${sessionScope.role=='2'}">
                        <c:if test="${teacherSerssion.tetype=='班主任'}">
                        
                         <li>
                            <a href="<%=Const.ROOT%>teacher/studentList"><i class="fa fa-table nav_icon"></i>学生信息<span class="fa arrow"></span></a>
                            
                        </li>
                       
                         <li>
                            <a href="<%=Const.ROOT%>teacher/allmyself"><i class="fa fa-table nav_icon"></i>学生自我鉴定<span class="fa arrow"></span></a>
                            
                        </li>
                        
                        </c:if>
                          <li>
                            <a href="<%=Const.ROOT%>teacher/gradeList"><i class="fa fa-table nav_icon"></i>成绩管理<span class="fa arrow"></span></a>
                            
                        </li>
                         <li>
                            <a href="<%=Const.ROOT%>students/allzhibiao"><i class="fa fa-table nav_icon"></i>指标管理<span class="fa arrow"></span></a>
                            
                        </li>
                        </c:if>
                        
                         <c:if test="${sessionScope.role=='3'}">
                         <li>
                            <a href="<%=Const.ROOT%>user/xuesum"><i class="fa fa-table nav_icon"></i>学生个数统计<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>user/jiaosum"><i class="fa fa-table nav_icon"></i>教师个数统计<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>user/allke"><i class="fa fa-table nav_icon"></i>课程管理<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>user/allji"><i class="fa fa-table nav_icon"></i>教学计划管理<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>user/allcollege"><i class="fa fa-table nav_icon"></i>学院管理<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>user/alldepartment"><i class="fa fa-table nav_icon"></i>专业管理<span class="fa arrow"></span></a>
                            
                        </li>
                        
                         <li>
                            <a href="<%=Const.ROOT%>students/allzhibiao"><i class="fa fa-table nav_icon"></i>指标管理<span class="fa arrow"></span></a>
                            
                        </li>
                        </c:if>
                        
                         <li>
                            <a href="<%=Const.ROOT%>upwd.jsp"><i class="fa fa-table nav_icon"></i>修改密码<span class="fa arrow"></span></a>
                            
                        </li>
                       
                        
                        <li>
                            <a href="<%=Const.ROOT%>user/logout"><i class="fa fa-table nav_icon"></i>退出系统<span class="fa arrow"></span></a>
                            
                        </li>
                        
                        
                        
                       
                        