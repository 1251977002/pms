package Servlet;

import entity.User;
import service.UserService;
import util.BaseServlet;
import util.EmailUtil;
import util.MemcachedUtil;
import util.UUIDKEY;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/forget/*")
public class ForgetServlet extends BaseServlet {

    private UserService userService = new UserService();

    public void forget(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/forget.jsp").forward(request,response);
    }

    public void getuser(HttpServletRequest request,HttpServletResponse response){
        String username = request.getParameter("username");
        User user = userService.findByName(username);
        String code = UUIDKEY.getKeyWith();
        String subject = "密码找回";
        StringBuilder sb = new StringBuilder();
        sb.append("<p>");
        sb.append("<span>请点击以下连接重置密码：</span>");
        String msg = "http://localhost:8080/forget/newpassword?name="+user.getUsername()+"&code="+code;
        sb.append(msg);
        sb.append("<h4>请在30分钟之内操作完成！</h4>");
        sb.append("</p>");
        if (user != null){

            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    EmailUtil.sendHtmlEmail(subject,sb.toString(),user.getEmail());
                }
            });
            thread.start();
            MemcachedUtil.put("password",30*60*60,code);
        }

    }
    public void newpassword(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String code1 = (String)MemcachedUtil.get("password");
        String username = request.getParameter("name");
        User user = userService.findByName(username);
        if(user != null && code1 != null && code1.equals(code)){
            MemcachedUtil.del("password");
            request.setAttribute("user",user);
            request.getRequestDispatcher("/WEB-INF/views/new.jsp").forward(request,response);
        }else{
            response.sendError(404,"验证码失效请重新找回");
        }

    }
    //获取新密码
    public void reset(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        Integer id = Integer.valueOf(request.getParameter("id"));
        userService.updatePassword( id,password);
        request.getRequestDispatcher("/WEB-INF/views/suc.jsp").forward(request,response);
    }


}
