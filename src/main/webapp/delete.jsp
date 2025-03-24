<!DOCTYPE html>
<%@page import="com.intial.Contact"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.intial.us"%>
<%@page import="com.conn.dbconnect"%>
<%@page import="com.dao.Contactdao"%>



<%@page import="com.intial.us"%>
<% us user1 =(us)session.getAttribute("user-ob");
if(null == user1){

session.setAttribute("login-msgg","Login First");
response.sendRedirect("login.jsp");
}
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login page</title>
    <%@include file="allCss.jsp"%>

</head>
<body style =" background: #b8b8d0">
<%@include file="navbar.jsp"%>
<% if(user2323!=null){
session.setAttribute("id-msg",user2323);}%>
<!------editContact-------->

<!------editContact--------->
 <div class ="container">
       <div class ="row mt-3">
       <div class ="col-md-4 offset-md-4">
       <div class ="card c-head">
       <div class ="card-header text-center ">
       <i class ="fa fa-user-circle-o fa-2x"></i>
       <h5>Add Contact</h5>
              </div>


<div class="card-body">
       <form action="delete" method="post">
       <% int val = Integer.parseInt(request.getParameter("cid"));
       Contactdao cont = new Contactdao(dbconnect.getConnection());
       Contact tact = cont.ViewGet(val);
       session.setAttribute("send-id",tact);%>


         <div class="mb-3">
           <label for="exampleInputPassword1" class="form-label">Name</label>
           <input value= "<%=tact.getName()%>" type="text" class="form-control" id="exampleInputPassword1" name="name">
         </div>
         <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
                    <input  value= "<%=tact.getEmail()%>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                  </div>
         <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Phone Number</label>
                    <input type="password" value= "<%=tact.getPhno()%>" class="form-control" id="exampleInputPassword1" name="phno">
                  </div>
                   <div class="mb-3">
                             <label for="exampleInputPassword1" class="form-label">About</label>
                             <input type="text" value= "<%=tact.getAbout()%>" class="form-control" id="exampleInputPassword1" name="about">
                           </div>


        <div class="text-center mt-4"> <button type="submit" class="btn btn-primary text-item:center">Confirm</button>
        </div>
       </form>


       </div>
       </div>



</body>
</html>