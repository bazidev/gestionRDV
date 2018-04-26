package com.gestionRDV.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gestionRDV.beans.Admin;
import com.gestionRDV.beans.Medecin;
import com.gestionRDV.beans.Patient;
import com.gestionRDV.utils.HibernateUtil;

public class LoginRequests {

	public static Object login(String username, String password, String account) {
		String table = account.substring(0, 1).toUpperCase() + account.substring(1);
		Session session = HibernateUtil.getSession();
		if (session != null) {
			try {
				Query query = session.createQuery("from "+table+" where username = '"+username+"' and password='"+password+"' ");
				System.out.println(query);
				List users = query.list();
				
				if(!users.isEmpty())
				{
					if(account.equals("admin"))
					{
						Admin user = (Admin)users.get(0);
						if (password.equals(user.getPassword())) {
							System.out.println("User: " + user.toString());
							return user;
						}
					}
					else if(account.equals("medecin"))
					{
						Medecin user = (Medecin)users.get(0);
						if (password.equals(user.getPassword())) {
							System.out.println("User: " + user.toString());
							return user;
						}
					}
					else if(account.equals("admin"))
					{
						Patient user = (Patient)users.get(0);
						if (password.equals(user.getPassword())) {
							System.out.println("User: " + user.toString());
							return user;
						}
					}
				}
				else {
					return -1;
				}
				//Admin user = (Admin) session.get(Admin.class, username);
				
			} catch (Exception exception) {
				System.out.println("Exception occred while reading user data: " + exception.getMessage());
				return -1;
			}

		} else {
			System.out.println("DB server down.....");
		}
		return -1;
	}


}
