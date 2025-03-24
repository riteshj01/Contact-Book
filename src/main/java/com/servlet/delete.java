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
@WebServlet("/delete")
public class delete extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Contact Existing =(Contact) session.getAttribute("send-id");
        Contactdao dao = new Contactdao(dbconnect.getConnection());
        boolean ps = dao.delete(Existing.getId());
        if(ps){
            session.setAttribute("suc-delete","Successfully delete");
            resp.sendRedirect("viewContact.jsp");
        }else{
            resp.sendRedirect("delete.jsp");
        }

    }
}
