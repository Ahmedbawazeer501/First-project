<%@page import="com.model.UserFiles"%>
<%@page import="java.util.List"%>
<%@page import="com.database.DatabaseImplementation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
	<body style="background-image: url('pexels-pixabay-139398.jpg'); background-repeat: no-repeat;">
</nav>
		<br>
		<h1>
			<br> Publicly Verifiable Shared Dynamic Electronic Health Record Databases with Functional Commitment Supporting Privacy-Preserving Integrity Auditing
		</h1>
		<br>
	
	<br><br>
	<center>
	<h1>Files</h1>
	
	<%
int userid=(Integer)session.getAttribute("userid");
DatabaseImplementation di=new DatabaseImplementation();
List<UserFiles> files=di.userFiles(userid);
%>
	<div class="container">
		<table class="table">
			<tr>
			     


				<td>User Id</td><br>
				<td>File Name</td><br>
				<td>Download</td><br>
			</tr>
			<%
for(UserFiles uf: files){%>
			<tr>
				<td><%=uf.getUserid() %></td>
				<td><%=uf.getFileName() %></td>
				<td><a href="download?fileName=<%=uf.getFileName()%>">Download</a></td>
			</tr>
			<% }%>

		</table>
		</center>
	</div>
</body>
</html>