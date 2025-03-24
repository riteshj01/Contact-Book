package com.servlet;

import com.conn.dbconnect;
import com.dao.userdao;
import com.intial.us;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        if (email == null || email.isEmpty() && password == null || password.isEmpty()) {
           resp.sendRedirect("login.jsp");
        } else {
            System.out.println("The string is not empty.");

            userdao dao = new userdao(dbconnect.getConnection());
            us user = userdao.getlogin(email, password);
            HttpSession session = req.getSession();
            if (user != null) {
                session.setAttribute("user-ob", user);
                resp.sendRedirect("index.jsp");
            } else {
                session.setAttribute("login-failed", "Wrong email & password");
                resp.sendRedirect("login.jsp");
            }
        }
    }
}
