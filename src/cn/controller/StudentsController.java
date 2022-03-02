package cn.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Grade;
import cn.entity.Plans;
import cn.entity.Students;
import cn.entity.Teams;
import cn.entity.User;
import cn.entity.Zhibiao;
import cn.service.GradeService;
import cn.service.PlansService;
import cn.service.StudentsService;
import cn.service.TeamsService;
import cn.service.UserService;
import cn.service.ZhibiaoService;
import cn.tools.Const;

@Controller
@RequestMapping("/students")
public class StudentsController {
	
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
	ZhibiaoService zhibiaoService;
	

	
	@RequestMapping("gradeSelect")
    public  String gradeSelect(HttpServletRequest request,Model model){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Students students=studentsService.selectByUser(u1.getId());
		List<Grade> glist=gradeService.myGrade(students.getId());
			model.addAttribute("glist", glist);
	         return "chengji";
		}
	
	@RequestMapping("studyAccess")
    public  String studyAccess(HttpServletRequest request,Model model,Integer csid,Integer tsid){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Students students=studentsService.selectByUser(u1.getId());
		Teams teams=teamsService.selectByPrimaryKey(tsid);
		List<Plans> plist=plansService.selectList(csid, students.getDid(), tsid);
		List<Teams> tlist=teamsService.selectList();
			model.addAttribute("plist", plist);
			model.addAttribute("tlist", tlist);
			model.addAttribute("teams", teams);
			model.addAttribute("tsid", tsid);
	         return "kebiao";
		}
	
	@RequestMapping("studyIdea")
    public  String studyIdea(HttpServletRequest request,Model model,Integer csid,Integer tsid){
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Students students=studentsService.selectByUser(u1.getId());
		Teams teams=teamsService.selectByPrimaryKey(tsid);
		List<Map<String, Integer>> plist=plansService.selectPlan(students.getDid(), tsid);
		List<Teams> tlist=teamsService.selectList();
			model.addAttribute("plist", plist);
			model.addAttribute("tlist", tlist);
			model.addAttribute("teams", teams);
			model.addAttribute("tsid", tsid);
	         return "fangan";
		}
	
	@RequestMapping("mycheck")
    public  String mycheck(HttpServletRequest request,String myself){
		System.out.println("-----------------"+myself);
		User u1=(User)request.getSession().getAttribute("userSerssion");
		Students students=studentsService.selectByUser(u1.getId());
		students.setMyself(myself);
		int n=studentsService.updateByPrimaryKeySelective(students);
	         return "shenhe";
		}
	
	
	@RequestMapping("person")
    public  String person(HttpServletRequest request,HttpSession session,String password,String phone,Model model)throws ServletException, IOException{
			User user=(User)request.getSession().getAttribute("userSerssion");
			 user.setPassword(password);
			 int n=userService.updateByPrimaryKeySelective(user);
			 session.setAttribute("userSerssion",user);	
			 return "upwd";
	
    }
	
	@RequestMapping("yujing")
    public  String yujing(HttpServletRequest request,Model model)throws ServletException, IOException{
			User user=(User)request.getSession().getAttribute("userSerssion");
			Students students=studentsService.selectByUser(user.getId());
			List<Zhibiao> zlist=zhibiaoService.selectByStu(students.getId());
			model.addAttribute("zlist", zlist);
			return "access";
	
    }
	
	@RequestMapping("allzhibiao")
    public  String allzhibiao(HttpServletRequest request,Model model)throws ServletException, IOException{
			List<Zhibiao> zlist=zhibiaoService.selectList();
			model.addAttribute("zlist", zlist);
			return "allaccess";
	
    }
	
	
	
	@RequestMapping("unpass")
    public  String unpass(HttpServletRequest request,Model model)throws ServletException, IOException{
			User user=(User)request.getSession().getAttribute("userSerssion");
			Students students=studentsService.selectByUser(user.getId());
			List<Grade> glist=gradeService.unGrade(students.getId());
			model.addAttribute("glist", glist);
			return "warn";
	
    }
	
	@RequestMapping("unqualified")
    public  String unqualified(HttpServletRequest request,Model model)throws ServletException, IOException{
			User user=(User)request.getSession().getAttribute("userSerssion");
			Students students=studentsService.selectByUser(user.getId());
			List<Zhibiao> zlist=zhibiaoService.unStu(students.getId());
			model.addAttribute("zlist", zlist);
			return "unhege";
	
    }
	
	
	@RequestMapping("toxiugai")
	@ResponseBody()
	 public Zhibiao toxiugai(Integer id){
		System.out.println("--------------"+id);
		Zhibiao zhibiao=zhibiaoService.selectByPrimaryKey(id);
		return zhibiao;
		
	}
	
	@RequestMapping("xiugai")
    public  String xiugai(Zhibiao zhibiao){
			zhibiaoService.updateByPrimaryKeySelective(zhibiao);
			return "redirect:/students/allzhibiao";
	
    }
	
	@RequestMapping("xiumy")
    public  String xiumy(Students students){
			studentsService.updateByPrimaryKeySelective(students);
			return "redirect:/students/my";
	
    }
	
	
	
	@RequestMapping("shanchu")
	@ResponseBody()
	 public Integer shanchu(Integer id){
		System.out.println("--------------"+id);
		int n=zhibiaoService.deleteByPrimaryKey(id);
		return n;
		
	}
		

	@RequestMapping("my")
    public  String my(HttpServletRequest request,Model model){
		User user=(User)request.getSession().getAttribute("userSerssion");
		Students students=studentsService.selectByUser(user.getId());
		model.addAttribute("students", students);
		return "myself";
    }
	
}
