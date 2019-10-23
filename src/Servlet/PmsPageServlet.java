package Servlet;

import com.google.gson.Gson;
import entity.Project;
import service.ProjectService;
import util.BaseServlet;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/pmspage/*")
public class PmsPageServlet extends BaseServlet {

    private ProjectService projectService= new ProjectService();

    public void showProject(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(request,response);
    }

    public void findByPage(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String pageNo = request.getParameter("pageNo");
        Page<Project> page = projectService.findByPage(Integer.valueOf(pageNo));

        outJson(response,page);
    }

}
