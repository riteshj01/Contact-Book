<!DOCTYPE html>
<%@page import="com.intial.us"%>
<%@page import="com.intial.Contact"%>
<%@page import="com.dao.Contactdao"%>
<%@page import="com.conn.dbconnect"%>
<%@page import="com.dao.userdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<% us user1 =(us)session.getAttribute("user-ob");
if(null == user1){

session.setAttribute("login-msgg","Login First");
response.sendRedirect("login.jsp");
}
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@include file="allCss.jsp"%>
    <style type="text/css">
    .crd-ho:hover{
    background:#eddada;
    }</style>
</head>
<body>
<%@include file="navbar.jsp"%>
<% String val =(String)session.getAttribute("suc-delete");
String val1 = (String)session.getAttribute("error-delete");
if(val!=null){%>
<div class ="alert alert-success" role="alert"><%=val%></div>
<%
session.removeAttribute("suc-delete");

}
if(val1!=null){%>
<div class ="alert alert-success" role="alert"><%=val%></div>
<% session.removeAttribute("error-delete");}



%>

<div class="container">
<div class="row p-4">
<%if(user1!=null){
 Contactdao userp = new Contactdao(dbconnect.getConnection());
List<Contact> cs = userp.userE(user1.getId());
session.setAttribute("edit-msg",cs);
for(Contact c: cs){
%>



<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body">
<h5>Name: <%= c.getName()%> </h5>
<p>Email: <%=c.getEmail()%></p>
<p>PhoneNo:<%=c.getPhno()%></p>
<p>about:  <%=c.getAbout()%></p>
<p>userid: <%=user1.getId()%></p>
<div class= "text-center">
<a href= "edit.jsp?cid=<%=c.getId()%>" class="btn btn-success btn-sm text-white">Edit<a/>
<a href= "delete?cid=<%=c.getId()%>" class="btn btn-danger btn-sm text-white">Delete<a/>
</div>
</div>
</div>
</div>
<%}}%>
</div>
</div>

</body>
</html>