<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.AppointDAO"%>
<%@page import="com.entity.appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient_details</title>
<%@include file="../componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
.back-img {
	background: url("images/istockphoto-1132247922-612x612.jpg");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container-fulid backImg p-5">
<p class="text-center fs-2 text-white">
</p>
</div>
<div class="container back-img p-3">
<div class="row">
<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Patient Details</p>
<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>



						<table class="table">
						<thead>
						<tr>
						<th scope="col">FullName</th>
						<th scope="col">Gender</th>
						<th scope="col">Age</th>
						<th scope="col">Appointment Date</th>
						<th scope="col">Email</th>
						<th scope="col">Mob No</th>
						<th scope="col">Diseases</th>
						<th scope="col">Status</th>
						<th scope="col">Action</th>
						
						
						</tr>
						</thead>
					<tbody>
					<%
					Doctor doctor=(Doctor)session.getAttribute("doctObj");
					AppointDAO dao = new AppointDAO(Dbconnect.getConn());
					
					List<appointment> list = dao.getAllAppointmentByDoctorLogin(doctor.getId());
					for (appointment ap: list) {
				
					%>

					<tr>
					<th><%=ap.getFullName()%></th>
					<td><%=ap.getGender() %></td>
					<td><%=ap.getAge() %></td>
					<td><%=ap.getAppoinDate() %></td>
					<td><%=ap.getEmail()%></td>
					<td><%=ap.getPhno()%></td>
					<td><%=ap.getDiseases()%></td>
					<td><%=ap.getStatus()%></td>
					
					<td>
					<%if("pending".equals(ap.getStatus())) {%>
					<a href="comment.jsp?id=<%=ap.getId() %>" class="btn btn-$m btn-success">Pending</a>
					
					<% }
					else
					{%>
						<a href="#" class="btn btn-$m btn-success disabled">Comment</a>
					<% }
					%>
					
					
					
					</td>
					</tr>
					<%
					}
					%>
					
					
					
				
					</tbody>
						</table>
						
</div>
</div>
</div>
<div class="col-md-3 p-3">
<img alt="" src="images.jpg">

</div>
</div>
</div>
</body>
</html>

