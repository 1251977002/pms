package Servlet;

import entity.Goal;
import entity.Project;
import entity.Task;
import entity.User;
import service.GoalService;
import service.TaskService;
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

@WebServlet(urlPatterns = "/goal/*")
public class GoalServlet extends BaseServlet {
    public void showgoal(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        GoalService goalService = new GoalService();
        List<Goal> List = goalService.findAll();

        request.setAttribute("List",List);

        request.getRequestDispatcher("/WEB-INF/views/goal.jsp").forward(request,response);
    }
    public void newgoal(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/new_goal.jsp").forward(request,response);
    }
    public void showAlltask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");

        TaskService taskService = new TaskService();
        List<Task> List = taskService.showAllTask();
        request.setAttribute("List",List);
        request.getRequestDispatcher("/WEB-INF/views/task.jsp").forward(request,response);
    }
    public void addgoal(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String goalname = request.getParameter("goalname");
        String goaltext = request.getParameter("goaltext");

        GoalService goalService = new GoalService();
        HttpSession session = request.getSession();
        Goal goal = new Goal();

        User user = (User) session.getAttribute("user");
        //Project project = (Project) session.getAttribute("project");

        goal.setUserid(user.getId());
        //goal.setProjectid(project.getId());
        goal.setName(goalname);
        goal.setContent(goaltext);
        goal.setCareatetime(DateUtil.getStringDate());

        goalService.addGoal(goal);

        request.getRequestDispatcher("/WEB-INF/views/project.jsp").forward(request,response);
    }
    public void updategoal(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");

        HttpSession session = request.getSession();
        session.setAttribute("id",id);

        request.getRequestDispatcher("/WEB-INF/views/edit_goal.jsp").forward(request,response);
    }
    public void updateGoalById(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("goalname");
        String content = request.getParameter("goalcontent");


        HttpSession session = request.getSession();
        int id = Integer.parseInt((String)session.getAttribute("id"));

        GoalService goalService = new GoalService();
        Goal goal = new Goal();

        goal.setName(name);
        goal.setContent(content);
        goalService.edit(goal,id);

        request.getRequestDispatcher("/WEB-INF/views/project.jsp").forward(request,response);

    }
}
