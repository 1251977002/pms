package Servlet;

import entity.*;
import service.DocumentService;
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
import java.util.List;

@WebServlet(urlPatterns = "/document/*")
public class DocumentServlet extends BaseServlet {
    public void showdocument(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        DocumentService documentService = new DocumentService();
        List<Document> List = documentService.findAll();

        request.setAttribute("List",List);

        request.getRequestDispatcher("/WEB-INF/views/document.jsp").forward(request,response);
    }
    public void sharenewdocument(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/new_document.jsp").forward(request,response);
    }
    public void readAll(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String documentid = request.getParameter("id");
        int id = Integer.parseInt(documentid);
        DocumentService documentService = new DocumentService();
        Document document = documentService.finddocumentid(id);
        HttpSession session = request.getSession();
        session.setAttribute("document",document);
        request.setAttribute("document",document);

        request.getRequestDispatcher("/WEB-INF/views/document_show.jsp").forward(request,response);
    }
    //分页
    public void findByPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        DocumentService documentService = new DocumentService();
        //Document document = documentService.findDocumentByUserIdAndProjectId(user.getId(),project.getId());

        String pageNo = request.getParameter("pageNo");
        Page<Document> page = documentService.findByPage(Integer.valueOf(pageNo));

        outJson(response,page);
    }
    //分享资料
    public void addnewdocument(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        DocumentService documentService = new DocumentService();
        UserService userService = new UserService();

        User user1 = userService.findNameById(user.getId());

        Document document = new Document();
        document.setTitle(title);
        document.setContent(content);
        document.setUserid(user.getId());
        document.setCreatetime(DateUtil.getStringDate());
        document.setUsername(user1.getUsername());
        document.setProjectid(project.getId());

        documentService.adddocument(document);

        request.getRequestDispatcher("/WEB-INF/views/document.jsp").forward(request,response);
    }
    //评论分页
    public void findCommentBydocumentid(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String no = request.getParameter("pageNo");
        int  pageNo =Integer.valueOf(no);
        int documentId = Integer.parseInt(request.getParameter("documentId"));
        DocumentService documentService = new DocumentService();
        Page<Documentcomment> page  = documentService.findByDocumentId(documentId,pageNo);
        outJson(response,page);
    }
    public void addcomment(HttpServletRequest request,HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        String content = request.getParameter("cont");
        int documentid = Integer.parseInt(request.getParameter("documentId"));

        DocumentService documentService = new DocumentService();
        UserService userService = new UserService();

        User user1 = userService.findNameById(user.getId());

        Documentcomment documentcomment = new Documentcomment();
        documentcomment.setContent(content);
        documentcomment.setUserid(user.getId());
        documentcomment.setCreatetime(DateUtil.getStringDate());
        documentcomment.setUsername(user1.getUsername());
        documentcomment.setDocumentid(documentid);


        documentService.adddocumentcomment(documentcomment);
        outJson(response,documentcomment);




    }



}
