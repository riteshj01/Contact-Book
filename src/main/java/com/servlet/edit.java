package com.servlet;

import com.conn.dbconnect;
import com.dao.Contactdao;
import com.intial.Contact;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/edit")
public class edit extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Contact Existing =(Contact) session.getAttribute("send-id");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phno = req.getParameter("phno");
        String about = req.getParameter("about");
        Contact Update = new Contact(name,email,phno,about, Existing.getUserid());
        Contactdao dao = new Contactdao(dbconnect.getConnection());
      boolean conn = dao.edit(Update,Existing);
      HttpSession sess = req.getSession();

      if(conn){
          sess.setAttribute("suc-msg","Successfully Edit Contact");
          resp.sendRedirect("viewContact.jsp");
      }else{
          System.out.println("not added");
      }
    }
}
