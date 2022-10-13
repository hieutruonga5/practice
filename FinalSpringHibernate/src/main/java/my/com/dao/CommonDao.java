package my.com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class CommonDao {

    public Session getCurrentSession() {

//		Session  session = null;
//		try {
//			 session = sessionFactory.getCurrentSession();
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		if(session == null){
//			session = sessionFactory.openSession();
//		}		
//		return session;
        try {
            return sessionFactory.openSession();
        } catch (Exception e) {
            sessionFactory.close();
        }
        return sessionFactory.openSession();
    }

    @Autowired
    private SessionFactory sessionFactory;

}
