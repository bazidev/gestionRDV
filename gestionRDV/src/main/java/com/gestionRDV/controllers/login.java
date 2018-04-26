package com.gestionRDV.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gestionRDV.beans.*;
import com.gestionRDV.dao.LoginRequests;
import com.gestionRDV.dao.UserInfo;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String account = request.getParameter("account");
		if(request.getSession().getAttribute("r") != null )
		{	
			if((boolean) request.getSession().getAttribute("r"))
			{
				System.out.println(username +"dddjk");
				account= (String)request.getSession().getAttribute("account");
				switch((String)request.getSession().getAttribute("account"))
				{
				case "medecin":
					Medecin md = (Medecin)request.getSession().getAttribute("user");
					username =md.getUsername();
					password =md.getPassword();
					break;

				case "admin":
					Admin ad = (Admin)request.getSession().getAttribute("user");
					
					username =ad.getUsername();
					password =ad.getPassword();
					break;

				case "patient":
					Patient pt = (Patient)request.getSession().getAttribute("user");
					username =pt.getUsername();
					password =pt.getPassword();
					break;
				}
			}
		}

		String page = "index.jsp";
		if (username.trim().length() >= 0 && username != null && password.trim().length() >= 0 && password != null) 
		{
			
			Object result = LoginRequests.login(username, password,account);
			System.out.print(result);
			if (!( result instanceof Integer)) {
				System.out.println("Login success!!!");
				page=account+"_home.jsp";
				request.getSession().setAttribute("user", result);
				request.getSession().setAttribute("account", account);
			}
			else 
			{
				request.setAttribute("msg", "Assurez-vous que votre nom d'utilisateur et le mot de pass sont corrects !!!");
			}
			}
			else {
				request.setAttribute("msg", "entrez le nom d'utilisateur et le mot de pass ...");
			}
			request.getRequestDispatcher(page).include(request, response);

		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
