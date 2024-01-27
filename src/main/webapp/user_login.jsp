<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user_login</title>
<%@include file="componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);

}
.back-img {
	background: url("images/istockphoto-1189304032-612x612.jpg");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}




</style>

</head>
<body>
<%@include file="componemts/number.jsp" %>

	<div class="container-fluid p-5 back-img">

<div class="row">
<div class="col-md-4 offset-md-4">

<div class="card paint-card">
<div class="card-body">
<p class="fs-4 text center">User Login</p>

<c:if test="${not empty succMsg}">

<p class="text-center text-success fs-3">${succMsg}</p>
<c:remove var="succMsg" scope="session"/>



</c:if>



<c:if test="${not empty errorMsg}">

<p class="text-center text-danger fs-3">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>



</c:if>




<form action="userLogin" method="post">
<div class="nb-3">
<label class="form-Label">Email Address</label><input required name="email" type="email" class="form-control">
</div>

<div class="nb-3">
<label class="form-Label">Password</label><input required name="password" type="password" class="form-control">
</div>

<button type="submit" class="btn bg-success text-white col-md-12" >Login</button>


</form>
		<br>Don't have an account?<a href="singup.jsp" class="text-decoration-none">Create one </a>
	
	</div>
	</div>
	
	</div>
	</div>
	</div>
	
</body>
</html>