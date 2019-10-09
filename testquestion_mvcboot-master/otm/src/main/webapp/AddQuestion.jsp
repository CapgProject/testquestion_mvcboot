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
<jsp:include page="include_script.jsp"></jsp:include>
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
      <h3 class="section-title">Add Question</h3>
      <p class="section-description">Enter the Question details to be Added here</p>
      </div>
      <fo:form action="addquestionsubmit" method="POST"
			modelAttribute="question" enctype="multipart/form-data" id="form">
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Enter the Test Id:
          </div>
          <div class="col-md-4 col-lg-4">
            <input type="text" name="testid" id="testid" />
            <span id="id_error" style="color:red"></span>
            <span style="color:red">${error}</span>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Input File:
          </div>
          <div class="col-md-4 col-lg-4">
            <input type= "file" name = "exfile" id="file" accept=".xlsx"/>
            <span id="file_error" style="color:red"></span>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
          </div>
          <div class="col-md-4 col-lg-4">
            <button type="submit" class = "btn btn-primary">Add Question</button>
          </div>
        </div>
        <br>
        </fo:form>   
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

<script type="text/javascript">
$(function () {
	$("#id_error").hide();
	$("#file_error").hide();
	var error_id = false;
	var error_file = false;
	$("#testid").focusout(function () {
		check_id();
	});
	
	$("#file").focusout(function () {
		check_file();
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
	
	function check_file() {
		var filename = $("#file").val();
		var extension = filename.substr(filename.lastIndexOf(".")+1);
		if(extension != "xlsx"){
			$("#file_error").html("Invalid file format chosen! Please choose a .xlsx  file only!");
			$("#file_error").show();
			error_file = true;
		}
		else{
			$("#file_error").hide();
		}
	}
	
	$("#form").submit(function(){
		error_id = false;
		error_file = false;
		check_id();
		check_file();
		if(error_id == false && error_file == false){
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