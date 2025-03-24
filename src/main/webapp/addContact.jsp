<!DOCTYPE html>


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
 <div class ="container">
       <div class ="row mt-3">
       <div class ="col-md-4 offset-md-4">
       <div class ="card c-head">
       <div class ="card-header text-center ">
       <i class ="fa fa-user-circle-o fa-2x"></i>
       <h5>Add Contact</h5>
              </div>


<div class="card-body">

<% String val =(String)session.getAttribute("fal-add");
if(val!=null){ %>
<div class ="alert alert-success" text-center role="alert"><%=val%></div>
<%session.removeAttribute("fal-add");}%>
       <form action="addcontact" method="post">


         <div class="mb-3">
           <label for="exampleInputPassword1" class="form-label">Name</label>
           <input type="text" class="form-control" id="exampleInputPassword1" name="name">
         </div>
         <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                  </div>
         <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Phone Number</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="phno">
                  </div>
                   <div class="mb-3">
                             <label for="exampleInputPassword1" class="form-label">About</label>
                             <input type="text" class="form-control" id="exampleInputPassword1" name="about">
                           </div>


        <div class="text-center mt-4"> <button type="submit" class="btn btn-primary text-item:center">Add</button>
        </div>
       </form>


       </div>
       </div>


</body>
</html>