package Servlet;

import entity.Goal;
import entity.Project;
import entity.Task;
import entity.User;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.poi.ss.formula.functions.T;
import service.GoalService;
import service.TaskService;
import util.BaseServlet;
import util.DateUtil;

import javax.print.DocFlavor;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = "/task/*")
public class TaskServlet extends BaseServlet {
    public void showtask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //通过id，展示所选中的这个目标

        String goalid = request.getParameter("id");
        int id = Integer.parseInt(goalid);


        GoalService goalService = new GoalService();
        TaskService taskService = new TaskService();

        Goal goal =goalService.showThisGoal(id);
        List<Task> List = taskService.showAllTaskByGoalId(id);
        request.setAttribute("List",List);
        request.setAttribute("goal",goal);
        request.getRequestDispatcher("/WEB-INF/views/task.jsp").forward(request,response);

    }
    public void jumpaddtask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String goalid = request.getParameter("id");
        int id = Integer.parseInt(goalid);
        GoalService goalService = new GoalService();

        Goal goal =goalService.showThisGoal(id);
        HttpSession session = request.getSession();
        session.setAttribute("goal",goal);
        request.setAttribute("goal",goal);

        request.getRequestDispatcher("/WEB-INF/views/new_task.jsp").forward(request,response);
    }
    public void addtask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
       //应该拿到goalid 的值
        //String goalid = request.getParameter("id");
        //int id = Integer.parseInt(goalid);
        HttpSession session = request.getSession();
        Goal goal = (Goal) session.getAttribute("goal");
        User user = (User) session.getAttribute("user");

        Map parms = request.getParameterMap();
        Task tasks = new Task();
        TaskService taskService = new TaskService();
        tasks.setCreatetime(DateUtil.getStringDate());
        tasks.setGoalid(goal.getId());
        tasks.setUserid(user.getId());


        try {
            BeanUtils.populate(tasks,parms);
        } catch (Exception e) {
            e.printStackTrace();
        }
        taskService.addtask(tasks);
        request.setAttribute("goal",goal);
        request.getRequestDispatcher("/WEB-INF/views/project.jsp").forward(request,response);
    }
    public void edittask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Goal goal = (Goal) session.getAttribute("goal");
        session.setAttribute("goal",goal);
        request.getRequestDispatcher("/WEB-INF/views/edit_task.jsp").forward(request,response);
    }
    public void updatetask(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Goal goal = (Goal) session.getAttribute("goal");

        Map parms = request.getParameterMap();
        Task tasks = new Task();
        TaskService taskService = new TaskService();


        try {
            BeanUtils.populate(tasks,parms);
        } catch (Exception e) {
            e.printStackTrace();
        }

        taskService.updatetask(goal.getId(),tasks);
        request.getRequestDispatcher("/WEB-INF/views/goal.jsp").forward(request,response);

    }
    public void edit_task(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession();
       Goal goal = (Goal) session.getAttribute("goal");

        Map parms = request.getParameterMap();
        Task tasks = new Task();
        TaskService taskService = new TaskService();


        try {
            BeanUtils.populate(tasks,parms);
        } catch (Exception e) {
            e.printStackTrace();
        }

        taskService.updatetask(goal.getId(),tasks);
        request.getRequestDispatcher("/WEB-INF/views/goal.jsp").forward(request,response);




    }


}
