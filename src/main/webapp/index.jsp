<%@page import="com.db.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>



<%@include file="componemts/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);

}
</style>



</head>
<body>
<%@include file="componemts/number.jsp" %>



	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/gettyimages-512278456-1024x1024.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="images/istockphoto-1132247922-612x612.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="images/istockphoto-1157247060-612x612.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container p-3 text-primary">
<p class="text-center fs-2">key features of the hospital</p>
<div class="row">
<div class="col-md-8 p-5">
<div class="row">
<div class="col-md-6">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">100% safety</p>
<p>This hospital gives full safety</p>
</div>
</div>
</div>




<div class="col-md-6">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">Clean environment</p>
<p>full clean environment we get</p>
</div>
</div>
</div>


<div class="col-md-6 mt-2">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">Friendly doctors</p>
<p>all doctors are gordious</p>
</div>
</div>
</div>

<div class="col-md-6 mt-2">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">Medical Research</p>
<p>All medical reaseraches done hear</p>
</div>
</div>
</div>

</div>
</div>
<div class="col-md-4">
<img alt="..." src="images/istockphoto-1189304032-612x612.jpg">
</div>



</div>



</div>

<hr>

<div class="container p-2 text-warning">
<p class="text-center fs-2">Our team</p>
<div class="row">
<div class="col-md-3">

<div class="card paint-card">
<div class="card-body  text-centre">
<img src="images/doctor.jpg" width="250px" height="300px">




<p class="fw-bold fs-5">Saloni Singh</p>
<p class=" fs-7">(CEO AND CHAIRMAN)</p>

</div>
</div>
</div>




<div class="col-md-3">

<div class="card paint-card">
<div class="card-body  text-centre">
<img src="images/doctor3.jpg" width="250px" height="300px">




<p class="fw-bold fs-5">Sherya Sarkar</p>
<p class=" fs-7">(CHIEF DIRECTOR)</p>

</div>
</div>
</div>


<div class="col-md-3">

<div class="card paint-card">
<div class="card-body  text-centre">
<img src="images/doctor5.jpg" width="250px" height="300px">





<p class="fw-bold fs-5">Rakhash</p>
<p class=" fs-7">(CHIEF DIRECTOR)</p>


 


</div>
</div>
</div>


<div class="col-md-3">

<div class="card paint-card">
<div class="card-body  text-centre">
<img src="images/doctor4.jpg" width="250px" height="300px">




<p class="fw-bold fs-5">Our Teams</p>
<p class=" fs-7">Nurses and junior Doctors</p>

</div>
</div>
</div>


















</div>
</div>







<%@include file="componemts/footer.jsp" %>



</body>
</html>