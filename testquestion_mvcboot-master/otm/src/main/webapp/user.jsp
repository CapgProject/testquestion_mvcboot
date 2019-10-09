<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MyConnect</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<jsp:include page="include_script.jsp" />

</head>

<body>

	<header id="header">
		<div class="container">

			<div id="logo" class="pull-left" style="width: 100%">

				<nav id="nav-menu-container">
					<ul class="nav-menu" style="width: 100%;">
						<li class="menu-active"><a href="#hero">Home</a></li>
						<li><a href="givetest">Give Test</a></li>
						<li><a href="getresult">Get Result</a></li>
						<li><a href="updateuser">Update Profile</a></li>
					</ul>
					<ul class="nav nav-menu nav-navbar nav-right">
						<li><a class="button" href="logout"><i class="fa fa-sign-in"></i>&nbsp;Logout</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<section id="hero" class="user">
		<div class="hero-container">
			<h1>Welcome to the Student page</h1>
			<h2>Click below to view all the actions you can perform</h2>
			<a href="#portfolio" class="btn-get-started">Actions</a>
		</div>
	</section>
	<!-- #hero -->

	<main id="main">

	<section id="portfolio">
		<div class="container wow fadeInUp">
			<div class="section-header">
				<h3 class="section-title">Actions</h3>
				<p class="section-description">Here are all the actions you can
					perform</p>
			</div>

			<div class="row" id="portfolio-wrapper">
				<div class="col-lg-4 col-md-6 portfolio-item filter-test">
					<a href="givetest"> <img
						src='<c:url value = "/webjars/img/CRUDimg/givetest.jpg"/>' alt=""
						style="height: 300px; width: 400px">
						<div class="details">
							<h4>Give Test</h4>
							<span>Click here to give the Test</span>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-test">
					<a href="getresult"> <img
						src='<c:url value = "/webjars/img/CRUDimg/getresult.jpg"/>' alt=""
						style="height: 250px; width: 380px">
						<div class="details">
							<h4>Get Result</h4>
							<span>Click here to get the Result</span>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-6 portfolio-item filter-profile">
					<a href="updateuser"> <img src='<c:url value = "/webjars/img/CRUDimg/updateprofile.png"/>' alt=""
						style="display: block; margin-left: auto; margin-right: auto; height: 200px; width: 300px">
						<div class="details">
							<h4>Update Profile</h4>
							<span>Click here to Update your profile</span>
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
    </section><!-- #contact --> </main>


	<!--==========================
    Footer
  ============================-->
	<footer id="footer">
		<div class="footer-top">
			<div class="container"></div>
		</div>
	</footer>
	<!-- #footer -->

	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>


</body>
</html>