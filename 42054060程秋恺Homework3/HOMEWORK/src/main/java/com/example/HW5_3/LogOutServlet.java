package com.example.HW5_3;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/log-out")
public class LogOutServlet extends HttpServlet {
    public void doGet (HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath()+"/sign-in-form.jsp");
    }
}