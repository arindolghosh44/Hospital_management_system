<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.AppointDAO"%>
<%@page import="com.entity.appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<%@include file="../componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>
<%@include file="navbar,jsp.jsp" %>





<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Patient Details</p>



						<table class="table">
						<thead>
						<tr>
						<th scope="col">FullName</th>
						<th scope="col">Gender</th>
						<th scope="col">Age</th>
						<th scope="col">Appointment</th>
						<th scope="col">Email</th>
						<th scope="col">Mob No</th>
						<th scope="col">Diseases</th>
						<th scope="col">Address</th>
						<th scope="col">Status</th>
						
						
						
						</tr>
						</thead>
						<tbody>
					<%
					AppointDAO dao = new AppointDAO(Dbconnect.getConn());
					DoctorDao dao2=new DoctorDao(Dbconnect.getConn());
					List<appointment> list = dao.getAllAppointment();
					for (appointment ap: list) {
				Doctor d=dao2.getDoctorById(ap.getDoctor_id());
					%>

					<tr>
					<th><%=ap.getFullName()%></th>
					<td><%=ap.getGender() %></td>
					<td><%=ap.getAge()%></td>
					<td><%=ap.getAppoinDate() %></td>
					<td><%=ap.getEmail()%></td>
					<td><%=ap.getPhno()%></td>
					<td><%=ap.getDiseases()%></td>
					<td><%=ap.getAddress()%></td>
					<td><%=ap.getStatus()%></td>
					
					<td>
					
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

</body>
</html>