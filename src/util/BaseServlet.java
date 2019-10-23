package util;

import bean.Result;
import com.fasterxml.jackson.databind.ObjectMapper;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class BaseServlet extends HttpServlet {
    public void outJson(HttpServletResponse response, Object result) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper objectMapper = new ObjectMapper();
        String resultJson = objectMapper.writeValueAsString(result);
        PrintWriter out = response.getWriter();
        out.print(resultJson);
        System.out.println("result:" + resultJson);
        out.flush();
        out.close();
    }

    public void outJson(HttpServletResponse response, Result result) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper objectMapper = new ObjectMapper();
        String resultJson = objectMapper.writeValueAsString(result);
        PrintWriter out = response.getWriter();
        out.print(resultJson);
        System.out.println("result:" + resultJson);
        out.flush();
        out.close();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uri = request.getRequestURI();// /book/save

        String methodName = uri.substring(uri.lastIndexOf("/")+1);//save

        try {
            // 谁调用的就代表谁
            Method method = this.getClass().getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
            //执行请求的servlet对应的方法
            method.invoke(this,request,response);
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
            //throw new RuntimeException();
        }


    }
}
