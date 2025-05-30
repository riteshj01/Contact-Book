<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <a class="navbar-brand" href="#"><i class="fa-solid fa-address-book"></i> PhoneBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addContact.jsp"><i class="fa-solid fa-user-plus"></i> Add Contact</a>
      </li>

      <li class="nav-item active">
        <a class="nav-link disabled" href="viewContact.jsp"><i class="fa-solid fa-users"></i> View Contact</a>
      </li>
    </ul>
    <%@page import="com.intial.us"%>
    <%
        us user2323 = (us)session.getAttribute("user-ob");
        if(user2323==null){ %>

        <form class="form-inline my-2 my-lg-0">
          <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-user-plus"></i> Login</a>
          <a href="register.jsp" class="btn btn-danger ml-4"><i class="fa-solid fa-user-plus"></i> Register</a>
        </form>
        <%}else{ %>
        <form class="form-inline my-2 my-lg-0">
        <button class ="btn btn-success "> <%= user2323.getName() %> </button>
        <a  data-toggle="modal" data-target="#exampleModal"
        class="btn btn-danger ml-4">Logout</a>
        </form>
        <% } %>

       <!-- Button trigger modal -->

       <!-- Modal -->
       <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
           <div class="modal-content">
             <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                 <span aria-hidden="true">&times;</span>
               </button>
             </div>
             <div class="modal-body">
             <h6>Do you want to logout</h6>
             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a href="logout" class="btn btn-primary">Logout</a>

             </div>
             <div class="modal-footer">

             </div>
           </div>
         </div>
       </div>



 </div>
</nav>
