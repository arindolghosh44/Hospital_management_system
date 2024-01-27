package com.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointDAO;
import com.dao.UserDao;
import com.db.Dbconnect;
import com.entity.User;
import com.entity.appointment;
@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet  {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 int user_id=Integer.parseInt(req.getParameter("user_id"));
		 String fullName=req.getParameter("fullName");
		 String gender=req.getParameter("gender");
		 String age=req.getParameter("age");
		 String appoinDate=req.getParameter("appoinDate");
		 String email=req.getParameter("email");
		 String phno=req.getParameter("phno");
		 String diseases=req.getParameter("diseases");
		 int doctor_id=Integer.parseInt(req.getParameter("doct"));
		 String address=req.getParameter("address");
		 String status=req.getParameter("status");
		
		appointment ap= new appointment(user_id,fullName,gender,age,appoinDate,email,phno,diseases,doctor_id, address,"pending");
		AppointDAO dao= new AppointDAO(Dbconnect.getConn());
		
		HttpSession session=req.getSession();
		
		
		if(dao.addAppointment(ap))
		{
			session.setAttribute("succMsg","Appointment Successfully ");
			 
			 
			resp.sendRedirect("user_appointment.jsp");
			 
			
		}
		
		else
		{
			session.setAttribute("errorMsg","Something went wrong");
			 
			 
			resp.sendRedirect("user_appointment.jsp");
		}
		
		
		
		
		
		
		
		
		
		
	}

	
	
}
