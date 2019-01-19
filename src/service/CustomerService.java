package service;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import model.Customer;
@Service
public interface CustomerService {


	void addCustomer(Customer customer);



	List<Customer> getAllCustomers();



	Customer getCustomerByemailId(String emailId);



	boolean verifyUser(String username, String password);

	//new code
	//void delCustomer(Customer customer);
		public Customer getCustomerById(int id);
		public void updateCustomer(Customer c);
		public Customer getCustomer(String email, String password);
		String getEMICardTypeCustomer();
		Double createBalance();
		Date createValidDate();

}
