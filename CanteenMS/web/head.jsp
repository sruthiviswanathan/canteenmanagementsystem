<%-- 
    Document   : head
    Created on : 17 Mar, 2018, 7:31:09 AM
    Author     : srava
--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">CANTEEN MANAGEMENT SYSTEM</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">USER<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="ulog.jsp">USER LOGIN</a></li>
          <li><a href="usign.jsp">USER SIGNUP</a></li>
          <li><a href="logout.jsp">USER LOGOUT</a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ADMIN <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="alog.jsp">ADMIN LOGIN</a></li>
          
        </ul>
      </li>
      
    </ul>
  </div>
</nav>


</body>
</html>




