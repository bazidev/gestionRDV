package com.gestionRDV.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gestionRDV.beans.Admin;
import com.gestionRDV.beans.Medecin;
import com.gestionRDV.beans.Patient;
import com.gestionRDV.utils.HibernateUtil;

public class loadData {
	public static Object allRDV() {
		Session session = HibernateUtil.getSession();
		if (session != null) {
			try {
				Query query = session.createQuery("from RDV ");
				
				List rdvs = query.list();
				
				return rdvs;
				//Admin user = (Admin) session.get(Admin.class, username);
				
			} catch (Exception exception) {
				System.out.println("Exception occred while reading user data: " + exception.getMessage());
				return null;
			}

		} else {
			System.out.println("DB server down.....");
		}
		return null;
	}


}
