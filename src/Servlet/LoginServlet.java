package Servlet;

import entity.User;
import service.UserService;
import util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login/*")
public class LoginServlet extends BaseServlet {
    public void login(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);
    }
   public void checklogin(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
       UserService userService = new UserService();

       String username = request.getParameter("username");
       String password = request.getParameter("password");
       String checkbox = request.getParameter("checkbox");

       User user = userService.findByNameAndPassWord(username);
       //将USE对象放到session控件中，在后面的sql中使用
       HttpSession session = request.getSession();
       session.setAttribute("user",user);

       if (user != null && password.equals(user.getPassword())){
           if (checkbox != null){
               Cookie cookie = new Cookie("username",user.getUsername());
               cookie.setMaxAge(60 * 60 * 24 * 7);
               cookie.setPath("/");
               cookie.setDomain("www.qinsen.com");

               Cookie cookie1 = new Cookie("password",user.getPassword());
               cookie.setMaxAge(60 * 60 * 24 * 7);
               cookie.setPath("/");
               cookie.setDomain("www.qinsen.com");

               response.addCookie(cookie);
               response.addCookie(cookie1);
           }

           response.sendRedirect("/createproject/showMenu");
       }else{
           response.sendRedirect("/login/login?errorcode=1001");
       }
   }

}
