package com.zhuoding;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf-8");
        System.out.println("正好GIT...................");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("zhangsan")&&password.equals("123")){
            request.setAttribute("msg","登录成功！");
        }else {
            request.setAttribute("msg","登录失败!");
        }
    request.getRequestDispatcher("/EL/login.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
