package com.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.Dbconnect;
import com.entity.User;

@WebServlet("/userLogin")

public class UserLogin extends HttpServlet {


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email=req.getParameter("email");
		String password=req.getParameter("password");
		HttpSession session=req.getSession();
		
		
		UserDao dao=new UserDao(Dbconnect.getConn());
		User user=dao.login(email,password);
		
		
		if(user!=null)
		{
			session.setAttribute("userObj", user);
			resp.sendRedirect("index.jsp");
		}
		else
		{
			session.setAttribute("errorMsg","Invalid Email and password");
			resp.sendRedirect("user_login.jsp");
		}
		
		
		
		
		
		
	}

	
	
	
	
	
	
}
