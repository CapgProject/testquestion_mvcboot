<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <li class="menu-active"><a href="#hero">Home</a></li>
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

  <section id="hero" class = "admin">
    <div class="hero-container">
      <h1>Welcome to the admin page</h1>
      <h2>Click below to view all the actions you can perform</h2>
      <a href="#portfolio" class="btn-get-started">Actions</a>
    </div>
  </section><!-- #hero -->

  <main id="main">

    <section id="portfolio">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Actions</h3>
          <p class="section-description">Here are all the actions you can perform</p>
        </div>
        <div class="row">

          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter=".filter-test, .filter-question, .filter-assign, .filter-profile" class="filter-active">All</li>
              <li data-filter=".filter-test">Test</li>
              <li data-filter=".filter-question">Questions</li>
              <li data-filter=".filter-assign">Assign Test</li>
              <li data-filter=".filter-profile">Update Profile</li>
            </ul>
          </div>
        </div>

        <div class="row" id="portfolio-wrapper">
          <div class="col-lg-4 col-md-6 portfolio-item filter-test">
            <a href="addtest">
              <img src='<c:url value = "/webjars/img/CRUDimg/addtest.png"/>' alt="" style="height: 300px; width: 400px">
              <div class="details">
                <h4>Add Test</h4>
                <span>Click here to add a new Test</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-test">
            <a href="updatetest">
              <img src='<c:url value = "/webjars/img/CRUDimg/updatetest.jpg"/>' alt="" style="height: 300px; width: 400px">
              <div class="details">
                <h4>Update Test</h4>
                <span>Click here to update an already existing test</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-test">
            <a href="removetest">
              <img src='<c:url value = "/webjars/img/CRUDimg/removetest.jpg"/>' alt="" style="height: 300px; width: 400px">
              <div class="details">
                <h4>Remove Test</h4>
                <span>Click here to remove an already existing test</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-question">
            <a href="addquestion">
              <img src='<c:url value = "/webjars/img/CRUDimg/addquestion.jpg"/>'  alt=""style="height: 220px; width: 375px">
              <div class="details">
                <h4>Add Question</h4>
                <span>Click here to add a question to a test</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-question">
            <a href="updatequestion">
              <img src='<c:url value = "/webjars/img/CRUDimg/updatequestion.png"/>' alt="" style="height: 200px; width: 400px">
              <div class="details">
                <h4>Update Question</h4>
                <span>Click here to update an already existing question in a test</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-question">
            <a href="removequestion">
              <img src='<c:url value = "/webjars/img/CRUDimg/removequestion.jpg"/>' alt="" style="height: 200px; width: 400px">
              <div class="details">
                <h4>Remove Question</h4>
                <span>Click here to remove a question from a test</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-assign">
            <a href="assigntest">
              <img src='<c:url value = "/webjars/img/CRUDimg/assigntest.jpg"/>' alt="" style="height: 200px; width: 375px">
              <div class="details">
                <h4>Assign test</h4>
                <span>Click here to assign a test to a user</span>
              </div>
            </a>
          </div>
          
          <div class="col-lg-4 col-md-6 portfolio-item filter-profile">
            <a href="updateuser">
              <img src='<c:url value = "/webjars/img/CRUDimg/updateprofile.png"/>' alt="" style="height: 200px; width: 350px">
              <div class="details">
                <h4>Update Profile</h4>
                <span>Click here to Update your profile</span>
              </div>
            </a>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-test">
            <a href="">
              <img src='<c:url value = "/webjars/img/CRUDimg/listtest.jpg"/>' alt="" style="height: 200px; width: 400px">
              <div class="details">
                <h4>List All Tests</h4>
                <span>Click here to List down all tests</span>
              </div>
            </a>
          </div>
          

        </div>

      </div>
    </section>

    <section id="contact">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Contact</h3>
          <p class="section-description">You can get in touch with us in the following ways</p>
        </div>
      </div>

      <div class="container wow fadeInUp mt-5">
        <div class="row justify-content-center">

          <div class="col-lg-3 col-md-4">

            <div class="info">
              <div>
                <i class="fa fa-map-marker"></i>
                <p>CKP<br>Airoli, Navi Mumbai</p>
              </div>

              <div>
                <i class="fa fa-envelope"></i>
                <p>info@example.com</p>
              </div>

              <div>
                <i class="fa fa-phone"></i>
                <p>+91 5589554885</p>
              </div>
            </div>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>
        </div>

      </div>
    </section><!-- #contact -->


  </main>


  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<!-- JavaScript Libraries -->
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
