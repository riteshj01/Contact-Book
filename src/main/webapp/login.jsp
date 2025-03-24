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
       <h5>Login page</h5>
              </div>

           <% String msg4= (String)session.getAttribute("login-msgg");
                                            if(msg4!=null){ %>
                                            <div class="alert alert-success text-center" role="alert"><%=msg4  %>  </div>

                                            <%  session.removeAttribute("login-msgg");} %>

                                            <% String success= (String)session.getAttribute("Suc-msg");
                                                                             if(success!=null){ %>
                                                                             <div class="alert alert-success text-center" role="alert"><%=success %> login here  </div>

                                                                             <%  session.removeAttribute("Suc-msg");} %>


              <% String msg= (String)session.getAttribute("login-failed");
                                 if(msg!=null){ %>
                                 <div class="alert alert-success text-center" role="alert"><%=msg  %>  </div>

                                 <%  session.removeAttribute("login-failed");} %>

                                 <!----logoutMassage-->

                                 <% String logoutMsg= (String)session.getAttribute("logout-msg");
                                                                  if(logoutMsg!=null){ %>
                                                                  <div class="alert alert-success text-center" role="alert"><%=logoutMsg  %>  </div>

                                                                  <%  session.removeAttribute("logout-msg");} %>






<div class="card-body">
<form action="login" method="post">
         <div class="mb-3">
           <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
           <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
         </div>
         <div class="mb-3">
           <label for="exampleInputPassword1" class="form-label">Password</label>
           <input type="password" class="form-control" id="exampleInputPassword1" name="password">
         </div>

         <div class="text-center mt-4"> <button type="submit" class="btn btn-primary text-item:center">Login</button>
                </div>
       </form>


       </div>
       </div>


</body>
</html>