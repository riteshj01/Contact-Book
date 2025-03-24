<!DOCTYPE html>
<html lang="en">
<%@page import="com.dao.userdao"%>
<%@page import="com.intial.us"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>
<%@page import="com.conn.dbconnect"%>
<%@page import=" java.sql.Connection"%>
<% us user1 =(us)session.getAttribute("user-ob");
if(null == user1){

session.setAttribute("login-msgg","Login First");
response.sendRedirect("login.jsp");
}
%>



<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@include file="allCss.jsp"%>
    <style type="text/css">
        .back-img{
        background:url("img/directory.jpeg");
        width:100%;
        height:80vh;
        background-repeat:no-repeat;
        background-size:cover;
        }</style>

</head>
<body style =" background: #b8b8d0">

<%@include file="navbar.jsp"%>



</div>

</body>
</html>