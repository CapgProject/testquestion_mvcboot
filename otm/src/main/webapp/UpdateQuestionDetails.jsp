<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<fo:form action="updatequestionsubmit" method="post" modelAttribute="question">
		<div class="row">
			<div class="text-center col-md-6 col-lg-6">Test Id :</div>
			<div class="col-md-4 col-lg-4">
				<input type="text" name="testId" value="${Update.getOnlinetest().getTestId()}" readonly/>
			</div>
		</div>
		<div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Question Id :
          </div>
          <div class="col-md-4 col-lg-4">
            <fo:input type="text" path="questionId" value="${Update.questionId}" readonly="true"/>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Question Title:
          </div>
          <div class="col-md-4 col-lg-4">
            <fo:input type="text" path="questionTitle" value="${Update.questionTitle}"/>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Question Options :
          </div>
          <div class="col-md-4 col-lg-4">
            <fo:input type="text" path="questionOptions" value="${Update.questionOptions}"/>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Question Answer :
          </div>
          <div class="col-md-4 col-lg-4">
           <fo:input type="text" path="questionAnswer" value="${Update.questionAnswer}"/>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            Question Marks :
          </div>
          <div class="col-md-4 col-lg-4">
           <fo:input type="text" path="questionMarks" value="${Update.questionMarks}"/>
          </div>
        </div>
        <div class = "row">
          <div class="text-center col-md-6 col-lg-6">
            
          </div>
          <div class="col-md-4 col-lg-4">
            <button type = "submit" class = "btn btn-primary">Update</button>
          </div>
        </div>
	</fo:form>
</body>
</html>