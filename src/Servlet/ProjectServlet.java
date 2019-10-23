package Servlet;

import entity.Project;
import entity.Task;
import entity.User;
import service.MessageService;
import service.TaskService;
import util.BaseServlet;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = "/project/*")
public class ProjectServlet extends BaseServlet {
    public void findMessageByPage(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String pageNo = request.getParameter("pageNo");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        MessageService messageService = new MessageService();
        Page<Map<String, Object>> page = messageService.findByPage(Integer.valueOf(pageNo),user.getId(),project.getId());
        outJson(response,page);

    }

    public void findtaskbyuserid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        TaskService taskService = new TaskService();
        List<Task> taskList = taskService.findTaskByUserId(user.getId());
        outJson(response,taskList);
    }


}
