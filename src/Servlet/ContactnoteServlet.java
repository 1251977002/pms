package Servlet;

import Dao.ContactDao;
import entity.Contact;
import entity.Contactnote;
import entity.User;
import service.ContactService;
import util.BaseServlet;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet(urlPatterns = "/contactnote/*")
public class ContactnoteServlet extends BaseServlet {

    public void findById(HttpServletRequest request,HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");

        String id= request.getParameter("id");
        int contactid = Integer.parseInt(id);

        ContactService contactService = new ContactService();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int userid = user.getId();

        //通过获取的id查找记录
        List<Contactnote> list = contactService.findContactNoteById(contactid,userid);
        outJson(response,list);

    }
   /* //分页
    public void listcontact(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String pageNo = request.getParameter("pageNo");
        ContactService contactService = new ContactService();
        Page<Contactnote> page = contactService.findnote(Integer.valueOf(pageNo));

        outJson(response,page);
    }*/

}
