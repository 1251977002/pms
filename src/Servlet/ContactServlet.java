package Servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import entity.Contact;
import entity.Contactnote;
import entity.Project;
import entity.User;
import org.apache.commons.beanutils.BeanUtils;
import service.ContactService;
import service.TaskService;
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
import java.util.Map;

@WebServlet(urlPatterns = "/contact/*")
public class ContactServlet extends BaseServlet {
    public void contactlist(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request,response);
    }
    public void addcontact(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/new_contact.jsp").forward(request,response);
    }
    //添加联系人
    public void new_contact(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        Map parms = request.getParameterMap();
        Contact  contact = new Contact();
        ContactService contactService = new ContactService();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        contact.setUserid(user.getId());
        contact.setCreatetime(DateUtil.getStringDate());


        try {
            BeanUtils.populate(contact,parms);
        } catch (Exception e) {
            e.printStackTrace();
        }

        contactService.addcontact(contact);

        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request,response);


    }
    //添加记录
    public void addtxt(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String txt = request.getParameter("content");
        String id = request.getParameter("contactId");
        int contactid = Integer.parseInt(id);

        ContactService contactService = new ContactService();
        Contactnote contactnote = new Contactnote();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        UserService userService = new UserService();


        Contact contact = contactService.findNameByContactId(contactid);
        User user1 = userService.findNameById(user.getId());

        contactnote.setContactid(contactid);
        contactnote.setContent(txt);
        contactnote.setUserid(user.getId());
        contactnote.setUsername(user1.getUsername());
        contactnote.setCreatetime(DateUtil.getStringDate());
        contactnote.setContactname(contact.getName());
        contactService.additem(contactnote);

        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request,response);

    }
    //联系人分页
    public void listcontact(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String pageNo = request.getParameter("pageNo");
        ContactService contactService = new ContactService();
        Page<Contact> page = contactService.findByPage(Integer.valueOf(pageNo));

        outJson(response,page);
    }
    //显示联系人信息
    public void findById(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String contactid =request.getParameter("id");
        int id = Integer.parseInt(contactid);

        ContactService contactService = new ContactService();
        Contact contact = contactService.findById(id);
        HttpSession session = request.getSession();
        session.setAttribute("contact",contact);
        //把java对象转化为json字符串
        /*ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.writeValueAsString("m");*/

        outJson(response,contact);

    }
    //点击编辑，带上contactid 跳转
    public void jumpedit(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Contact contact = (Contact) session.getAttribute("contact");

        ContactService contactService = new ContactService();
        Contact contact1 = contactService.findById(contact.getId());

        request.setAttribute("contact",contact1);

        request.getRequestDispatcher("/WEB-INF/views/edit_contact.jsp").forward(request,response);

    }
    //编辑联系人
    public void editcontact(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Contact contact = (Contact) session.getAttribute("contact");

        ContactService contactService = new ContactService();
        //Contact contact = contactService.findContactById(contact1.getId());

        Map parms = request.getParameterMap();
        try {
            BeanUtils.populate(contact,parms);
        } catch (Exception e) {
            e.printStackTrace();
        }

        contactService.editcontact(contact,contact.getId());

        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request,response);
    }
    //删除联系人
    public void del(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Contact contact = (Contact) session.getAttribute("contact");

        ContactService contactService = new ContactService();

        contactService.del(contact.getId());

        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request,response);

    }
    //记录分页
    public void listitem(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String pageNo = request.getParameter("pageNo");
        ContactService contactService = new ContactService();
        Page<Contactnote> page = contactService.findnotePage(Integer.valueOf(pageNo));

        outJson(response,page);
    }

}
