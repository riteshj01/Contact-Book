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
@WebServlet("/register")
public class register extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            if (email == null || email.isEmpty() && password == null || password.isEmpty()) {
                resp.sendRedirect("register.jsp");
            } else if (name == null || name.isEmpty()) {

                resp.sendRedirect("register.jsp");
            }else {

                us user = new us(name, email, password);
                userdao us1 = new userdao(dbconnect.getConnection());
                boolean f = us1.register(user);
                HttpSession session = req.getSession();
                if (f) {

                    session.setAttribute("reg-msg", "register successfully");
                    resp.sendRedirect("register.jsp");

                } else {
                    session.setAttribute("error-msg", "eroor successfully");
                    resp.sendRedirect("register.jsp");


                }
            }

        }
    }

