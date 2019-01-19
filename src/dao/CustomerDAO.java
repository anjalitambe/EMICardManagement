package dao;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import model.Customer;
@Repository
public interface CustomerDAO {
	
	void addCustomer(Customer customer);

	List<Customer> getAllCustomers();

	Customer getCustomerByemailId(String emailId);

	boolean verifyUser(String username, String password);

	//new code
	void delCustomer(Customer customer);
	public Customer getCustomerById(int id);
	void updateCustomer(Customer c);
	Customer getCustomer(String email, String password);

	String getEMICardTypeCustomer();
	
	Double createBalance();
	
	Date createValidDate();
}
