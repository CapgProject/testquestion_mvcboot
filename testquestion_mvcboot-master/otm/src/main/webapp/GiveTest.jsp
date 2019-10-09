<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>MyConnect</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

	<jsp:include page="include_script.jsp"></jsp:include>
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
						<li><a href="">Update Profile</a></li>
					</ul>
					<ul class="nav nav-menu nav-navbar nav-right">
						<li><a class="button" href="logout"><i class="fa fa-sign-in"></i>&nbsp;Logout</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>


  <main id="main">
  <br>
    <section id="portfolio">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">${heading}</h3>
          <p class="section-description">Below are the questions</p>
        </div>
        <fo:form method="post" action="givetest" modelAttribute="Question">
        <div class = "row">
        	<div class="col-lg-2">
        	</div>
        	<div class = "col-lg-7">${questions.questionTitle}</div>
        </div>
         <div class = "row">
        	<div class="col-lg-2">
        	</div>
        	<div class = "col-lg-7"><fo:radiobutton path="chosenAnswer" value="1" />${questions.questionOptions[0]}</div>
        </div>
         <div class = "row">
        	<div class="col-lg-2">
        	</div>
        	<div class = "col-lg-7"><fo:radiobutton path="chosenAnswer" value="2" />${questions.questionOptions[1]}</div>
        </div>
         <div class = "row">
        	<div class="col-lg-2">
        	</div>
        	<div class = "col-lg-7"><fo:radiobutton path="chosenAnswer" value="3" />${questions.questionOptions[2]}</div>
        </div>
         <div class = "row">
        	<div class="col-lg-2">
        	</div>
        	<div class = "col-lg-7"><fo:radiobutton path="chosenAnswer" value="4" />${questions.questionOptions[3]}</div>
        </div>
        <div class = "row">
        	<div class="col-lg-5">
        	</div>
        	<div class = "col-lg-7"><button type="submit" class = "btn btn-primary">Submit Test</button></div>
        </div>
      </fo:form>
      </div>
      
    </section>

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



</body>
</html>
