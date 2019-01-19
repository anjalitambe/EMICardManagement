package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Customer;

@Repository
public class AdminDAOImpl implements AdminDAO {

	private static final Logger logger = 			
			LoggerFactory.getLogger(AdminDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	@Override
	public boolean verifyUser1(String adminName, String password) {
		// TODO Auto-generated method stub
		System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String query="select adminName, password from Admin where adminName=:adminName and  password=:password";
		Query q=session.createQuery(query);
		q.setString("adminName", adminName);
		q.setString("password", password);
		List<Customer> l = q.list();
		
		if(l.size()==0)
		{
			return false;
		}
		tx.commit();
		session.close();
		
		return true;
	}

}
