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
<title>Suraj and Arindol</title>
<%@include file="../componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);

}
.backImg {
	background: 
		url("images/istockphoto-1132247922-612x612.jpg");
	height: 100vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}




</style>

</head>
<body>
<%@include file="navbar,jsp.jsp" %>


<div class="container backImg p-5">
<p class ="text-center fs-3">Admin Dashboard</p>




<c:if test="${not empty errorMsg}">
<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>




<c:if test="${not empty succMsg}">
<p class="fs-3 text-center text-success" role="alert" >${succMsg}</p>
<c:remove var="succMsg" scope="session"/>
</c:if>

<% DoctorDao dao= new DoctorDao(Dbconnect.getConn());%>

<div class="row">
<div class="col-md-12">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-md fa-3x"></i><br>
<p class="fs-4 text-center">
Doctor<br><%=dao.countDoctor()%>
</p>
</div>
</div>
</div>



<div class="col-md-4 mt-2">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fas fa-user-circle fa-3x"></i><br>
<p class="fs-4 text-center">
User<br><%=dao.countUser() %>
</p>
</div>
</div>
</div>


<div class="col-md-4 mt-2">
<div class="card paint-card">
<div class="card-body text-center text-success">
<i class="fa-solid fa-calendar-check fa-3x"></i><br>
<p class="fs-4 text-center">
Total Appointment<br><%=dao.countAppointment() %>
</p>
</div>
</div>
</div>




<div class="col-md-4 mt-2">
<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center text-success">
<i class="fa-solid fa-user-nurse fa-3x"></i><br>
<p class="fs-4 text-center">
Specialist<br><%=dao.countSpecialist()%>
</p>
</div>
</div>
</div>


</div>
</div>



<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
      
        <form action="../addSpecialist" method="post">
        <div class="form-group">
        
        
        
        <label>Enter Specialist Name</label>
        <input type="text" name="specName" class="form-control">
        
        </div>
        <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary">Add</button>
        </div>
        
        
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    
      </div>
    </div>
  </div>
</div>




</body>
</html>