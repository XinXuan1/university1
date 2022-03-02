package cn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Course;
import cn.entity.Grade;
import cn.entity.Students;
import cn.entity.Teacher;
import cn.entity.User;
import cn.service.CourseService;
import cn.service.GradeService;
import cn.service.PlansService;
import cn.service.StudentsService;
import cn.service.TeacherService;
import cn.service.TeamsService;
import cn.service.UserService;


@Controller
@RequestMapping("/teacher")
public class TeacherController {
	@Autowired
	UserService userService;
	
	@Autowired
	StudentsService studentsService;
	
	@Autowired
	GradeService gradeService;
	
	@Autowired
	PlansService plansService;
	
	@Autowired
	TeamsService teamsService;
	
	@Autowired
	TeacherService teacherService;
	
	@Autowired
	CourseService courseService;
	
	
	@RequestMapping("studentList")
    public  String studentList(HttpServletRequest request,Model model){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Teacher teacher=teacherService.selectByUser(u1.getId());
		List<Students> slist=studentsService.selectByD(teacher.getDsid());
		model.addAttribute("slist", slist);
	         return "allstudents";
		}
	
	@RequestMapping("allmyself")
    public  String allmyself(HttpServletRequest request,Model model){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Teacher teacher=teacherService.selectByUser(u1.getId());
		List<Students> slist=studentsService.selectByD(teacher.getDsid());
		model.addAttribute("slist", slist);
	         return "allmyself";
		}
	
	@RequestMapping("gradeList")
    public  String gradeList(HttpServletRequest request,Model model){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Teacher teacher=teacherService.selectByUser(u1.getId());
		List<Grade> glist=gradeService.selectlist(teacher.getId());
		List<Students> slist=studentsService.selectByGrade(teacher.getId());
		model.addAttribute("glist", glist);
		model.addAttribute("slist", slist);
	         return "allgrade";
		}
	
	@RequestMapping("addgrade")
    public  String addgrade(HttpServletRequest request,Grade grade){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Teacher teacher=teacherService.selectByUser(u1.getId());
		Course course=courseService.selectByTeacher(teacher.getId());
		grade.setCid(course.getId());
		gradeService.insertSelective(grade);
		return "redirect:/teacher/gradeList";
		}
	
	@RequestMapping("toxiugai")
	@ResponseBody()
	 public Grade toupdate(Integer id){
		System.out.println("--------------"+id);
		Grade grade=gradeService.selectByPrimaryKey(id);
		return grade;
	
		
	}
	@RequestMapping("xiugai")
    public  String xiugai(HttpServletRequest request,Grade grade){
		gradeService.updateByPrimaryKeySelective(grade);
		return "redirect:/teacher/gradeList";
		}
	
}
