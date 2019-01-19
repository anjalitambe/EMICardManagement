package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO{
	
	private static final Logger logger = 			
			LoggerFactory.getLogger(ProductDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	
	
	@Override
	public List<Product> getAllProducts() {

				Session session = sessionFactory.openSession();
				// List<Product> products = session.createQuery("from Product").list();
				List<Product> products = session.createCriteria(Product.class).list();
				System.out.println("----- List of Products-----");
				System.out.println(products);
				session.flush();
				session.close();
				return products;
	}

	@Override
	public Product getProductById(Integer productId) {
		
				Session session = sessionFactory.openSession();
				Transaction tx = session.beginTransaction();
				Product product = (Product) session.get(Product.class, productId);
				System.out.println(product);
				logger.info("product loaded successfully, product details=" + product);
				tx.commit();
				session.close();
				return product;
	}

	@Override
	public void deleteProduct(Integer productId) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Product product = (Product) session.get(Product.class, productId);
		session.delete(product);
		System.out.println("Product deleted successfully");
		tx.commit();
		session.flush();
		session.close();
	}

	@Override
	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(product);
		System.out.println("product saved:"+ product );
		tx.commit();
		session.close();
	}

	@Override
	public void editProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(product);
		System.out.println("product updated successfully");
		tx.commit();
		session.flush();
		session.close();
	}

}
