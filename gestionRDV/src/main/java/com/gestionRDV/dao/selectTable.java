package com.gestionRDV.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gestionRDV.utils.HibernateUtil;

public class selectTable {

	public static Object getUserInfo(int id,String account) {
		String table = account.substring(0, 1).toUpperCase() + account.substring(1);
		Session session = HibernateUtil.getSession();
		if (session != null) {
			try { 
				Query query = session.createQuery("from "+table+" where id = '"+id+"' ");
				System.out.println(query);
				List users = query.list();
				
				if(!users.isEmpty())
				{
					return users.get(0);
				}
				else {
					return null;
				}
				//Admin user = (Admin) session.get(Admin.class, username);
				
			} catch (Exception exception) {
				System.out.println("Exception occred while reading user data: " + exception.getMessage());
				return null;
			}

		} else {
			System.out.println("DB server down.....");
		}
		return -1;
	}

}
