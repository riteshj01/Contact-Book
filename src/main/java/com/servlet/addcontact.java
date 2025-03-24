package com.servlet;

import com.conn.dbconnect;
import com.dao.Contactdao;
import com.intial.Contact;
import com.intial.us;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/addcontact")
public class addcontact extends HttpServlet{


        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String id = req.getParameter("id");
            HttpSession session1 = req.getSession();
            us user12 =(us)session1.getAttribute("user-ob");
            int id1 = user12.getId();
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String phno= req.getParameter("phno");
            String about = req.getParameter("about");
            Contact cs = new Contact(name,email,phno,about,id1);
            Contactdao user1 = new Contactdao(dbconnect.getConnection());
            boolean f = user1.addContact(cs);
            HttpSession session = req.getSession();
            if(f){
                session.setAttribute("suc-add","successfully added");
                resp.sendRedirect("viewContact.jsp");

            }else{
                session.setAttribute("fal-add","Something is Wrong not added");
                resp.sendRedirect("addContact.jsp");
            }

        }
    }





