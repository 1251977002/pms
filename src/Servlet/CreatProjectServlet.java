package Servlet;

import Dao.ProjectDao;
import Dao.UserDao;
import Dao.UserProjectDao;
import entity.Project;
import entity.User;
import entity.UserProject;
import service.ProjectService;
import service.UserProjectService;
import service.UserService;
import util.BaseServlet;
import util.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

@WebServlet(urlPatterns = "/createproject/*")
public class CreatProjectServlet extends BaseServlet {

    //添加新项目
    public void addproject(HttpServletRequest request, HttpServletResponse response) throws IOException {

        request.setCharacterEncoding("UTF-8");

        Project project = new Project();
        UserProject userproject = new UserProject();
        ProjectService projectService = new ProjectService();
        UserProjectService userProjectService = new UserProjectService();



        String projectname = request.getParameter("projectname");
        String projectintro = request.getParameter("projectintro");

        String projectleader = request.getParameter("projectleader");
        String[] txt = request.getParameterValues("projectmembers");

        //向t_project中添加数据
        project.setName(projectname);
        project.setContent(projectintro);
        project.setCreatetime(DateUtil.getStringDate());

        //获取到projectid的值
        int id = projectService.add(project);
        //通过username查到userid
         User user = userProjectService.findUserIdByusername(projectleader);

        //向t_userproject中添加leader和userid
        userproject.setProjectid(id);
        userproject.setRole("lead");
        userproject.setUsername(projectleader);
        userproject.setUserid(user.getId());
        //向t——userproject中添加负责人的信息
        userProjectService.addlead(userproject);

        //通过for循环得到多个成员的信息，放入到t_userproject中
        for (int i =0; i < txt.length; i++){
            userproject.setUserid(user.getId());
            userproject.setProjectid(id);
            userproject.setRole("memeber");
            userproject.setUsername(txt[i]);
            userProjectService.addmembers(userproject);
        }

        response.sendRedirect("/createproject/showMenu");
    }


    //找到这个User
    public void findUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
        UserService userService = new UserService();
        List<User> userList = userService.findAllUser();
        outJson(response,userList);


    }
    //跳转到主菜单
    public void showMenu(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        ProjectService projectService = new ProjectService();
        List<Project> List = projectService.findNameAndIntro();

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        /*Project project = projectService.findProjectIdByUserId(user.getId());
        session.setAttribute("project",project);*/

        request.setAttribute("List",List);

        request.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(request,response);

    }
    //跳转到project页面
    public void jump(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String projectid = request.getParameter("id");
        int id = Integer.parseInt(projectid);
        ProjectService projectService = new ProjectService();
        Project project = projectService.findprojectid(id);
        HttpSession session = request.getSession();
        session.setAttribute("project",project);

        request.getRequestDispatcher("/WEB-INF/views/project.jsp").forward(request,response);
    }
    //跳转到project页面
    public void showproject(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/project.jsp").forward(request,response);

    }

}
