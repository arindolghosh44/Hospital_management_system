<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Arindol</title>
<%@include file="../componemts/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: url("images/Untitled.jpg");
	height: 100vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}




</style>
</head>
<body>
	<%@include file="navbar,jsp.jsp"%>
	<div class="container-fluid backImg p-3">
		<div class="row">

			

<div class="col-md-12">
<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center"> Doctor Details</p>
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
<th scope="col">Full name</th>
<th scope="col">DOB</th>
<th scope="col">Qualification</th>
<th scope="col">Specialist</th>
<th scope="col">Email</th>
<th scope="col">Mob no</th>
<th scope="col">Password</th>
</tr>
</thead>
<tbody>




<% 
									DoctorDao dao2 = new DoctorDao(Dbconnect.getConn());
									List<Doctor> list2 = dao2.getAllDoctor();
									for (Doctor d : list2) 
									{%>
									
									<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist() %></td>
									<td><%=d.getEmail() %></td>
									<td><%=d.getMobno() %></td>
									<td><%=d.getPassword() %></td>
									<td>
									<a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-$m btn-primary">Edit</a>
									<a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-$m btn-danger">Delete</a>
									</td>
									</tr>
									
									<%
									}%>



</tbody>
</table>
</div>

</div>
</div>
			
		</div>
	</div>
</body>
</html>