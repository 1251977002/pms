package Servlet;

import bean.Result;
import entity.Idea;
import entity.Ideacomment;
import entity.Project;
import entity.User;
import service.IdeaService;
import service.UserService;
import util.BaseServlet;
import util.DateUtil;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = "/idea/*")
public class IdeaServlet extends BaseServlet {

    public void showidea(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //通过uesrid查到用户名，放在最上面，获取创建这个想法的时间，放在li中
        //通过userid获取到创建的想法，放在想法标题上，下面是content，还有一个阅读全文的超链接
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        //通过userid找到ideaid，每次点进来都可以在session中放值
        IdeaService ideaService = new IdeaService();
        List<Idea> List = ideaService.findAllIdea();

        request.setAttribute("List",List);

        request.getRequestDispatcher("/WEB-INF/views/idea.jsp").forward(request,response);
    }
    public void addidea(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/new_idea.jsp").forward(request,response);
    }
    public void addnewidea(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        IdeaService ideaService = new IdeaService();
        UserService userService = new UserService();

        User user1 = userService.findNameById(user.getId());

        Idea idea = new Idea();
        idea.setTitle(title);
        idea.setContent(content);
        idea.setUserid(user.getId());
        idea.setCreatetime(DateUtil.getStringDate());
        idea.setUsername(user1.getUsername());
        idea.setProjectid(project.getId());

        ideaService.addidea(idea);

        request.getRequestDispatcher("/WEB-INF/views/idea.jsp").forward(request,response);
    }
    public void showthisidea(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String ideaid = request.getParameter("id");
        int id = Integer.parseInt(ideaid);
        IdeaService ideaService = new IdeaService();
        Idea idea = ideaService.findIdeaid(id);

        HttpSession session = request.getSession();
        session.setAttribute("idea",idea);
        request.setAttribute("idea",idea);

        request.getRequestDispatcher("/WEB-INF/views/idea_show.jsp").forward(request,response);
    }
    //分页
    public void findByPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        IdeaService ideaService = new IdeaService();
        Idea idea = ideaService.findIdeaIdByUserId(user.getId());

        String pageNo = request.getParameter("pageNo");
        //Page<Idea> page = ideaService.findByPage(Integer.valueOf(pageNo),user.getId(),idea.getId());
        Page<Idea> page = ideaService.findByPage(Integer.valueOf(pageNo));

        outJson(response,page);
    }
    //添加评论
    public void addcomment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Idea idea = (Idea) session.getAttribute("idea");
        User user = (User) session.getAttribute("user");
        String content = request.getParameter("cont");

        UserService userService = new UserService();
        IdeaService ideaService = new IdeaService();
        User user1 = userService.findNameById(user.getId());

        Ideacomment ideacomment = new Ideacomment();

        ideacomment.setContent(content);
        ideacomment.setCreatetime(DateUtil.getStringDate());
        ideacomment.setIdeaid(idea.getId());
        ideacomment.setUserid(user.getId());
        ideacomment.setUsername(user1.getUsername());

        ideaService.addcomment(ideacomment);

        outJson(response,ideacomment);
    }

    //展示所有评论
    public void findallcomment(HttpServletRequest request,HttpServletResponse response) throws IOException {

        IdeaService ideaService = new IdeaService();
        List<Ideacomment> ideacommentList = ideaService.findAllComment();
        Map<String, Object> map = new HashMap<String, Object>();

        Result result = new Result();

        map.put("ideacommentList",ideacommentList);
        request.setAttribute("ideacommentList",ideacommentList);
        result.setCode(0);
        result.setData(map);

        outJson(response,result);

    }
    public void findIdeaCommentByIdeaid(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String no = request.getParameter("pageNo");
        int  pageNo =Integer.valueOf(no);
        int ideaid = Integer.parseInt(request.getParameter("ideaId"));
        IdeaService ideaService = new IdeaService();
        Page<Ideacomment> page  = ideaService.findByIdeaId(ideaid,pageNo);
        outJson(response,page);

    }
    public void pushcount(HttpServletRequest request,HttpServletResponse response) throws IOException {
    }
    public void saveIdea(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String title = request.getParameter("ideatitle");
        String content = request.getParameter("ideacontent");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        IdeaService ideaService = new IdeaService();
        ideaService.save(title, content,user,project);
        response.sendRedirect("/idea/idea");

    }
    public void idea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/idea.jsp").forward(request,response);
    }

}
