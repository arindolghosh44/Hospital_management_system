package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dao.SpecialistDao;
import com.db.Dbconnect;


@WebServlet("/addSpecialist")

public class AddSpecialist  extends HttpServlet{

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String specName=req.getParameter("specName");
		SpecialistDao dao=new SpecialistDao(Dbconnect.getConn());
		
		
	boolean f=dao.addSpecialist(specName);
	HttpSession session=req.getSession();
	if(f)
	{
		session.setAttribute("succMsg","Specialist Added");
		resp.sendRedirect("admin/index.jsp");
	}
	else
	{
		session.setAttribute("errorMsg","Something went wrong ");
		resp.sendRedirect("admin_login.jsp");
	}
		
		
	}
	
	
	
	
}