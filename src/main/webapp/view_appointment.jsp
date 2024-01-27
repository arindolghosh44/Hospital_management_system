<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.AppointDAO"%>
<%@page import="com.entity.appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view_appointment</title>
<%@include file="componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/istockphoto-1157247060-612x612.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>

<%@include file="componemts/number.jsp" %>
<c:if test="${ empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
<div class="container-fulid backImg p-5">
<p class="text-center fs-2 text-white">
</p>
</div>
<div class="container p-3">
<div class="row">
<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4 fw-bold text-success">Appointment List</p>
						
						
						<table class="table">
						<thead>
						<tr>
						<th scope="col">FullName</th>
						<th scope="col">Gender</th>
						<th scope="col">Age</th>
						<th scope="col">Appointment Date</th>
						<th scope="col">Diseases</th>
						
						<th scope="col">Status</th>
						
						
						</tr>
						</thead>
					<tbody>
					<%
					User user=(User)session.getAttribute("userObj");
					AppointDAO dao = new AppointDAO(Dbconnect.getConn());
					DoctorDao dao2 = new DoctorDao(Dbconnect.getConn());
					List<appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
					for (appointment ap: list) {
				Doctor d=dao2.getDoctorById(ap.getDoctor_id());
					%>
						
					<tr>
					<th><%=ap.getFullName()%></th>
					<td><%=ap.getGender() %></td>
					<td><%=ap.getAge() %></td>
					<td><%=ap.getAppoinDate() %></td>
					<td><%=ap.getDiseases() %></td>
					
					<td>
					<%if("pending".equals(ap.getStatus())) {%>
					<a href="#" class="btn btn-$m btn-warning">Pending</a>
					
					<% }
					else
					{%>
						<%=ap.getStatus()%>
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

