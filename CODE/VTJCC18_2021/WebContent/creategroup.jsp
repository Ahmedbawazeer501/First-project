<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body
	style="background-image: url('pexels-pixabay-139398.jpg'); background-repeat: no-repeat;">
	<jsp:include page="./common/navigation.jsp" />
	<center>
	<h1>Welcome Manager</h1>
	<h3>Create group</h3>
	<% String message=(String)request.getAttribute("message");

if(message==null){%>


	<% }else{%>

	<p style="color: red;"><%=message %></p>
	<%} %>


	<form action="groupcreation" method="get">
		<label>Enter Group Name</label><br /> <input type="text" name="group" /><br />
		<label>Enter Size</label><br /> <input type="text" name="size" /><br />
		<br /> <input type="submit" value="submit" class="btn btn-danger" />
	</form>

</body>
</html>