<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BE CODER</title>
<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.AppointDAO"%>
<%@page import="com.entity.appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@include file="../componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

.back-img {
	background: url("images/images34.jpg");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

<%@include file="navbar.jsp" %>


<p class="text-center fs-3">Doctor Dahboard</p>
<% 
Doctor d=(Doctor)session.getAttribute("doctObj");

DoctorDao dao= new DoctorDao(Dbconnect.getConn());%>

<div class="container back-img p-5">
<div class="row">
<div class="col-md-4 offset-md-2">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-md fa-3x"></i><br>
<p class="fs-4 text-center">
Doctor<br><%=dao.countDoctor()%>
</p>
</div>
</div>
</div>



<div class="col-md-4">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-calender-check fa-3x"></i><br>
<p class="fs-4 text-center">
Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId()) %>
</p>
</div>
</div>
</div>




</body>
</html>