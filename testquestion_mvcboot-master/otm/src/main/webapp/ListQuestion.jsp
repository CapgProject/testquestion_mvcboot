<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <style>
  table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    text-align: left;
    padding: 8px;

  }

  tr:nth-child(even) {background-color: #64F5E8;}
  th{
    background-color: #0E56A9;
    font: red;
  }
</style>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">	
</script>
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
      <h3 class="section-title">List Questions</h3>
      <p class="section-description">Enter the test details whose questions need to be seen</p>
      </div>
      <form action="listquestionsubmit" method="post" id="form">
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Enter the Test Id:
          </div>
          <div class="col-md-4 col-lg-4">
            <input type="text" name="testId" id="testid" placeholder="Enter Test Id" class="form-control" >
            <span id="id_error" style="color:red"></span>
            <span style="color:red">${error}</span>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
          </div>
          <div class="col-md-4 col-lg-4">
            <button type="submit" class = "btn btn-primary">Show Questions</button>
          </div>
        </div>
        <br>
        </form>   
    </div>
    <div class="container wow fadeInUp">
    <table id = "list" align="justify-content-center" style="margin-left:auto;margin-right:auto; width: 50%;">
          <tr>
			<th>Question Id</th>
			<th>Question Title</th>
			<th>Option a</th>
			<th>Option b</th>
			<th>Option c</th>
			<th>Option d</th>
			<th>Total Marks</th>
		</tr>
		<a:forEach var="question" items="${questiondata}">
			<tr>
				<td>${question.questionId}</td>
				<td>${question.questionTitle}</td>
				<td>${question.questionOptions[0]}</td>
				<td>${question.questionOptions[1]}</td>
				<td>${question.questionOptions[2]}</td>
				<td>${question.questionOptions[3]}</td>
				<td>${question.questionMarks}</td>
			</tr>
		</a:forEach>
        </table>
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
  
  <script type="text/javascript">
$(function () {
	$("#id_error").hide();
	
	var error_id = false;
	
	$("#testid").focusout(function () {
		check_id();
	});
	
	function check_id() {
		var length = $("#testid").val().length;
		var pattern = new RegExp("^[0-9]+$");
		if(length<1 || !pattern.test($("#testid").val())){
			$("#id_error").html("Please enter a number!");
			$("#id_error").show();
			error_id = true;
		}
		else{
			$("#id_error").hide();
		}
	}
	
	$("#form").submit(function(){
		error_id = false;
		
		check_id();
		if(error_id == false){
			return true;
		}
		else{
			return false;
		}
	});
});
</script>
</body>
</html>
