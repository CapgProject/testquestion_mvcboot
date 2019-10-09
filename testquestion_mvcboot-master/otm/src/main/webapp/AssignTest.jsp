<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>MyConnect</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/css/mdb.min.css" rel="stylesheet">

	<!-- JQuery -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/js/mdb.min.js"></script>
  <!-- Favicons -->
  <link href='<c:url value = "/webjars/img/favicon.png"/>' rel="icon">
  <link href='<c:url value = "/webjars/img/apple-touch-icon.png"/>' rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href='<c:url value = "/webjars/lib/bootstrap/css/bootstrap.min.css"/>' rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href='<c:url value = "/webjars/lib/font-awesome/css/font-awesome.min.css"/>' rel="stylesheet">
  <link href='<c:url value = "/webjars/lib/animate/animate.min.css"/>' rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href='<c:url value = "/webjars/css/style.css" />' rel="stylesheet">
</head>

<body>

  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left" style="width: 100%">

      <nav id="nav-menu-container">
        <ul class="nav-menu" style="width: 100%;">
          <li class="menu-active"><a href="admin">Home</a></li>
          <li class="menu-has-children"><a href="#">Test</a>
            <ul>
              <li><a href="addtest">Add Test</a></li>
              <li><a href="updatetest">Update Test</a></li>
              <li><a href="removetest">Remove Test</a></li>
              <li><a href="showalltests">Show All Test</a></li>
              <li><a href="assigntest">Assign Test</a></li>
            </ul>
          </li>
          <li class="menu-has-children"><a href="#">Question</a>
            <ul>
              <li><a href="addquestion">Add Question</a></li>
              <li><a href="updatequestion">Update Question</a></li>
              <li><a href="removequestion">Remove Question</a></li>
              <li><a href="listquestion">List Question</a></li>
            </ul>
          </li>
          <li><a href="showallusers">List Users</a></li>
          <li><a href="updateuser">Update Profile</a></li>
        </ul>  
        <ul class="nav nav-menu nav-navbar nav-right">
          <li><a class="button" href="logout"><i class="fa fa-sign-in"></i>&nbsp;Logout</a></li>          
        </ul>      
      </nav>
    </div>
  </header>


  <main id="main">
  <br>
    <section id="portfolio">
      <div class="container wow fadeInUp">
      <div class="section-header">
      <h3 class="section-title">Assign Test</h3>
      <p class="section-description">You can use the below form to assign an existing test to a user</p>
      </div>
      <form action="assigntestsubmit" method="post">
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Enter the Test Id:
          </div>
          <div class="col-md-4 col-lg-4">
            <input type="text" name="testid" placeholder="Enter Test Id" class="form-control" >
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Enter the User Id:
          </div>
          <div class="col-md-4 col-lg-4">
            <input type="text" name="userid" placeholder="Enter User Id" class="form-control" >
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
          </div>
          <div class="col-md-4 col-lg-4">
            <button type="submit" class = "btn btn-primary">Assign Test</button>
          </div>
        </div>
        <br>
        </form>   
    </div>
    </section>

  </main>


  <!--==========================
    Footer
  ============================-->
  <footer id="footer" style="position: fixed;bottom: 0px; width: 100%;">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

 <script src='<c:url value = "/webjars/lib/jquery/jquery.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/jquery/jquery-migrate.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/bootstrap/js/bootstrap.bundle.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/easing/easing.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/wow/wow.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/waypoints/waypoints.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/counterup/counterup.min.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/superfish/hoverIntent.js"/>' ></script>
  <script src='<c:url value = "/webjars/lib/superfish/superfish.min.js"/>' ></script>

  <!-- Contact Form JavaScript File -->
  <script src='<c:url value = "/webjars/contactform/contactform.js" />' ></script>

  <!-- Template Main Javascript File -->
  <script src='<c:url value = "/webjars/js/main.js" />'></script>


</body>
</html>