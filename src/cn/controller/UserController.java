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

import cn.entity.College;
import cn.entity.Course;
import cn.entity.Department;
import cn.entity.Grade;
import cn.entity.Plans;
import cn.entity.Records;
import cn.entity.Students;
import cn.entity.Teacher;
import cn.entity.Teams;
import cn.entity.User;
import cn.entity.Zhibiao;
import cn.service.CollegeService;
import cn.service.CourseService;
import cn.service.DepartmentService;
import cn.service.GradeService;
import cn.service.PlansService;
import cn.service.StudentsService;
import cn.service.TeacherService;
import cn.service.TeamsService;
import cn.service.UserService;
import cn.service.ZhibiaoService;
import cn.tools.Const;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;
	
	@Autowired
	StudentsService studentsService;
	
	@Autowired
	GradeService gradeService;
	
	@Autowired
	PlansService plansService;
	
	@Autowired
	TeacherService teacherService;
	
	@Autowired
	DepartmentService departmentService;
	
	@Autowired
	TeamsService teamsService;
	
	@Autowired
	CourseService courseService;
	
	@Autowired
	CollegeService collegeService;
	
	@Autowired
	ZhibiaoService zhibiaoService;
	
	@RequestMapping("login")
    public  void login(HttpServletRequest request,String username,String password,String role, HttpServletResponse response, HttpSession session,Model model)throws ServletException, IOException{
		 response.setContentType("text/html;charset=UTF-8");
		 request.setCharacterEncoding("UTF-8");
		 PrintWriter out=response.getWriter();
		 User user=userService.getlogin(username, password, role);
		if(user==null){
			out.print("<script>alert('用户名或者密码错误!');location.href='"+Const.ROOT+"login.jsp';</script>");
		}else{
			
				
			 session.setAttribute("userSerssion",user);
			 session.setAttribute("role",user.getRole());
			 
			 
			
			 
			 response.sendRedirect(Const.ROOT+"index.jsp");
	         
		}
		
	}
	
	
	@RequestMapping("xuesum")
    public  String xuesum(Model model){
		List<Map<String, Integer>> slist=studentsService.selectCount();
		List<Department> dlist=departmentService.selectList();
		model.addAttribute("slist", slist);
		model.addAttribute("dlist",dlist );
	         return "studentnum";
		}
	
	@RequestMapping("jiaosum")
    public  String jiaosum(Model model){
		List<Map<String, Integer>> tlist=teacherService.selectCount();
		List<Department> dlist=departmentService.selectList();
		model.addAttribute("dlist",dlist );
		model.addAttribute("tlist", tlist);
	         return "teachernum";
		}
	
	@RequestMapping("addstudent")
    public  String addstudent(String username,String password,String sname,String birth,String sex,String smail,String pmail,String sphone,String ptele,Integer studentid,Integer did,String place  ){
			User user=new User();
			user.setRole("1");
			user.setUsername(username);
			user.setPassword(password);
			userService.insertSelective(user);
			User u1=userService.getlogin(user.getUsername(), user.getPassword(), "1");
			Students students=new Students();
			students.setUid(u1.getId());
			students.setBirth(birth);
			students.setDid(did);
			students.setSname(sname);
			students.setPlace(place);
			students.setSex(sex);
			students.setSmail(smail);
			students.setStudentid(studentid);
			students.setPmail(pmail);
			students.setSphone(sphone);
			students.setPtele(ptele);

			studentsService.insertSelective(students);
			Students students2=studentsService.selectByUser(u1.getId());
			Zhibiao zhibiao=new Zhibiao();
			zhibiao.setSid(students2.getId());
			zhibiao.setFtype("上课出勤");
			zhibiaoService.insertSelective(zhibiao);
			
			Zhibiao zhibiao1=new Zhibiao();
			zhibiao1.setSid(students2.getId());
			zhibiao1.setFtype("作业完成");
			zhibiaoService.insertSelective(zhibiao1);
			
			Zhibiao zhibiao2=new Zhibiao();
			zhibiao2.setSid(students2.getId());
			zhibiao2.setFtype("实验出勤");
			zhibiaoService.insertSelective(zhibiao2);
			
			Zhibiao zhibiao3=new Zhibiao();
			zhibiao3.setSid(students2.getId());
			zhibiao3.setFtype("考试达标");
			zhibiaoService.insertSelective(zhibiao3);
			return "redirect:/user/xuesum";
		}
	
	@RequestMapping("addteacher")
    public  String addteacher(String username,String password,String tname,String tmail,Integer dsid,String tetype  ){
			User user=new User();
			user.setRole("2");
			user.setUsername(username);
			user.setPassword(password);
			userService.insertSelective(user);
			User u1=userService.getlogin(user.getUsername(), user.getPassword(), "2");
			Teacher teacher=new Teacher();
			teacher.setTname(tname);
			teacher.setTetype(tetype);
			teacher.setDsid(dsid);
			teacher.setTmail(tmail);
			teacher.setUid(u1.getId());
			teacherService.insertSelective(teacher);
			return "redirect:/user/jiaosum";
		}
	
	@RequestMapping("allke")
    public  String allke(Model model){
		List<Course> clist=courseService.selectList();
		List<Teams>  telist=teamsService.selectList();
		List<Teacher> tlist=teacherService.selectList();
		model.addAttribute("clist", clist);
		model.addAttribute("telist", telist);
		model.addAttribute("tlist", tlist);
	         return "allcourse";
		}
	
	@RequestMapping("addcourse")
    public  String addcourse(Model model,Course course){
		courseService.insertSelective(course);
		return "redirect:/user/allke";
		}
	
	
	@RequestMapping("shanchu")
	@ResponseBody()
	 public Integer shanchu(Integer id){
		System.out.println("--------------"+id);
		int n=courseService.deleteByPrimaryKey(id);
		return n;
		
	}
	
	@RequestMapping("allji")
    public  String allji(Model model,Integer tsid){
		List<Plans> plist=plansService.selectList1(tsid);
		List<Department> dlist=departmentService.selectList();
		List<Teams>  tlist=teamsService.selectList();
		List<Course> clist=courseService.selectList();
		model.addAttribute("plist", plist);
		model.addAttribute("dlist", dlist);	
		model.addAttribute("clist", clist);
		model.addAttribute("tlist", tlist);
		model.addAttribute("tsid", tsid);
		return "allplans";
		
		}
	
	@RequestMapping("addplans")
    public  String addplans(Model model,Plans plans){
	plansService.insertSelective(plans);
		return "redirect:/user/allji";
		}
	
	@RequestMapping("allcollege")
    public  String allcollege(Model model){
		List<College> clist=collegeService.selectList();
		model.addAttribute("clist", clist);
		return "allcollege";
		
		}
	
	@RequestMapping("addcollege")
    public  String addcollege(College college){
		collegeService.insertSelective(college);
		return "redirect:/user/allcollege";
		}
	
	@RequestMapping("alldepartment")
    public  String alldepartment(Model model){
		List<College> clist=collegeService.selectList();
		List<Department> dlist=departmentService.selectList();
		model.addAttribute("dlist", dlist);
		model.addAttribute("clist", clist);
		return "alldepartment";
		
		}
	
	@RequestMapping("adddepartment")
    public  String adddepartment(Department department){
		departmentService.insertSelective(department);
		return "redirect:/user/alldepartment";
		}
	
	@RequestMapping("logout")
	protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession();
        session.invalidate();
        response.sendRedirect(Const.ROOT+"login.jsp");
    }
}
