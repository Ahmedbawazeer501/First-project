<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.UserFiles"%>
<%@page import="java.util.List"%>
<%@page import="com.database.DatabaseImplementation"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('pexels-pixabay-139398.jpg'); background-repeat: no-repeat;">
</nav>
		<br>
		<h1>
			<br> <center>Publicly Verifiable Shared Dynamic Electronic Health Record Databases with Functional Commitment Supporting Privacy-Preserving Integrity Auditing
		</center></h1>
		<br>
	<%
int userid=(Integer)session.getAttribute("userid");
DatabaseImplementation di=new DatabaseImplementation();
List<UserFiles> files=di.userReq(userid);
%>
<center>
<h2>Audit Proof Files</h2>
	<div class="container">
		<table class="table">
			<tr>
			
				<td>User Id</td>&nbsp;&nbsp;&nbsp;
				<td>File Name</td>&nbsp;&nbsp;&nbsp;
				<td>Status</td>&nbsp;&nbsp;&nbsp;
			</tr>
			<%
for(UserFiles uf: files){%>
			<tr>
				<td><%=uf.getUserid() %></td>
				<td><%=uf.getFileName() %></td>
				<td><a href="Allfilesdownload?fileName=<%=uf.getFileName()%>"><%=uf.getStatus() %></a></td>
			</tr>
			<% }%>

		</table>
	</div>
</body>
</html>