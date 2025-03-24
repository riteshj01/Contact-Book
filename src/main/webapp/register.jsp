<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login page</title>
    <%@include file="allCss.jsp"%>

</head>
<body style =" background: #b8b8d0">
<%@include file="navbar.jsp"%>
 <div class ="container">
       <div class ="row mt-3">
       <div class ="col-md-4 offset-md-4">
       <div class ="card c-head">
       <div class ="card-header text-center ">
       <i class ="fa fa-user-circle-o fa-2x"></i>
       <h5>Register page</h5>
              </div>
              <% String msg= (String)session.getAttribute("reg-msg");
                   if(msg!=null){ %>
                   <div class="alert alert-success text-center" role="alert"><%=msg  %> </div>

                   <%  session.removeAttribute("reg-msg");
                   session.setAttribute("Suc-msg","Successfully Registered");
                   response.sendRedirect("login.jsp");} %>
                   <% String msg1= (String)session.getAttribute("error-msg");
                                      if(msg1 !=null){ %>
                                      <div class="alert alert-success" role="alert"><%=msg1  %>Login..<a href ="login.jsp"> Click here  </a> </div>

                                      <% session.removeAttribute("error-msg"); } %>


<div class="card-body">
       <form action="register" method="post">
       <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label"> Enter Your Name </label>
                  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
                </div>
         <div class="mb-3">
           <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
           <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
         </div>
         <div class="mb-3">
           <label for="exampleInputPassword1" class="form-label">Password</label>
           <input type="password" class="form-control" id="exampleInputPassword1" name="password">
         </div>

          <div class="text-center mt-4"> <button type="submit" class="btn btn-primary text-item:center">Register</button>
                 </div>
       </form>


       </div>
       </div>


</body>
</html>