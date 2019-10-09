<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
	
</script>
</head>
<body>
	<fo:form action="updatequestionsubmit" method="post"
		modelAttribute="question" id="formsubmit">
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Test Id :</div>
			<div class="col-md-4 col-lg-4">
				<input type="text" name="testId"
					value="${Update.getOnlinetest().getTestId()}" readonly />
			</div>
		</div>
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Question Id :</div>
			<div class="col-md-4 col-lg-4">
				<fo:input type="text" path="questionId" value="${Update.questionId}"
					readonly="true" />
			</div>
		</div>
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Question Title:</div>
			<div class="col-md-4 col-lg-4">
				<fo:input type="text" id="questiontitle" path="questionTitle"
					value="${Update.questionTitle}" />
				<span id="title_error" style="color: red"></span> <span
					style="color: red">${errorsubmit}</span>
			</div>
		</div>
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Question Options :</div>
			<div class="col-md-4 col-lg-4">
				<fo:input type="text" id="questionoptions" path="questionOptions"
					value="${Update.questionOptions}" />
				<span id="options_error" style="color: red"></span>
			</div>
		</div>
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Question Answer :</div>
			<div class="col-md-4 col-lg-4">
				<fo:input type="text" id="questionanswer" path="questionAnswer"
					value="${Update.questionAnswer}" />
				<span id="answer_error" style="color: red"></span>
			</div>
		</div>
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Question Marks :</div>
			<div class="col-md-4 col-lg-4">
				<fo:input type="text" id="questionmarks" path="questionMarks"
					value="${Update.questionMarks}" />
				<span id="marks_error" style="color: red"></span>
			</div>
		</div>
		<div class="row">
			<div class="text-center col-md-6 col-lg-6"></div>
			<div class="col-md-4 col-lg-4">
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
		</div>
	</fo:form>

	<script type="text/javascript">
		$(function() {
			$("#title_error").hide();
			$("#options_error").hide();
			$("#answer_error").hide();
			$("#marks_error").hide();

			var error_title = false;
			var error_options = false;
			var error_answer = false;
			var error_marks = false;

			$("#questiontitle").focusout(function() {
				check_title();
			});

			$("#questionoptions").focusout(function() {
				check_options();
			});

			$("#questionanswer").focusout(function() {
				check_answer();
			});

			$("#questionmarks").focusout(function() {
				check_marks();
			});

			function check_title() {
				var length = $("#questiontitle").val().length;
				var pattern = new RegExp("^[A-Z][A-Za-z 0-9_-]*$");
				if (length < 6) {
					$("#title_error").html(
							"Title should be greater than 6 characters!");
					$("#title_error").show();
					error_title = true;
				} else {
					if (!pattern.test($("#questiontitle").val())) {
						$("#title_error").html(
								"First character should be a capital letter!");
						$("#title_error").show();
						error_title = true;
					} else {
						$("#title_error").hide();
					}
				}
			}

			function check_options() {
				var length = $("#questionoptions").val().length;
				var values = $("#questionoptions").val().toString();
				var result = values.split(",");
				var result_length = result.length;
				
				if(length < 1){
					$("#options_error").html("Options field cannot be empty!");
					$("#options_error").show();
					error_options = true;
				}
				else{
					if(result_length != 4){
						$("#options_error").html("Enter only 4 options separated by commas!");
						$("#options_error").show();
						error_options = true;
					}
					else{
						$("#options_error").hide();
					}
				}
			}

			function check_answer() {
				var length = $("#questionanswer").val().length;
				var pattern = new RegExp("^[1-4]");	
				if(length < 1){
					$("#answer_error").html("Answer field cannot be empty!");
					$("#answer_error").show();
					error_answer = true;
				}
				else{
					if(!pattern.test($("#questionanswer").val())){
						$("#answer_error").html("Answer should be between 1 and 4 only!");
						$("#answer_error").show();
						error_answer = true;
					}
					else{
						$("#answer_error").hide();
					}
				}
			}

			function check_marks() {
				var length = $("#questionmarks").val().length;
				if (length < 1) {
					$("#marks_error").html("Marks field cannot be empty!");
					$("#marks_error").show();
					error_marks = true;
				} else {
					$("#marks_error").hide();
				}
			}

			$("#formsubmit").submit(
					function() {
						error_title = false;
						error_options = false;
						error_answer = false;
						error_marks = false;

						check_title();
						check_options();
						check_answer();
						check_marks();

						if (error_title == false && error_options == false
								&& error_answer == false
								&& error_marks == false) {
							return true;
						} else {
							return false;
						}
					});
		});
	</script>
</body>
</html>