package gestionRDV;
import org.hibernate.Session;
import persistence.HibernateUtil;

public class App 
{
    public static void main( String[] args )
    {
        System.out.println("Maven + Hibernate + MySQL");
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        session.beginTransaction();
        Admin ad = new Admin();
        
        ad.setUsername("1hamid");
        ad.setPassword("1hamid");
        
        session.save(ad);
        session.getTransaction().commit();
    }
}