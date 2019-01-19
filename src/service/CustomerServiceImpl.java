package service;

import java.sql.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CustomerDAO;
import model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDAO customerDAO;
	
    @Transactional
	@Override
	public void addCustomer(Customer customer) {
		customerDAO.addCustomer(customer);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return customerDAO.getAllCustomers();
	}

	@Override
	public Customer getCustomerByemailId(String emailId) {
		return customerDAO.getCustomerByemailId(emailId);
	}

	@Override
	public boolean verifyUser(String username, String password) {
		// TODO Auto-generated method stub
		return customerDAO.verifyUser(username,password);
	}
	
	@Override
	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		return this.customerDAO.getCustomerById(id);
	}
	@Transactional
	@Override
	public void updateCustomer(Customer c) {
		// TODO Auto-generated method stub
		this.customerDAO.updateCustomer(c);
	}

	@Override
	public Customer getCustomer(String email, String password) {
		// TODO Auto-generated method stub
		return this.customerDAO.getCustomer(email, password);

	}

	@Override
	public String getEMICardTypeCustomer() {
		// TODO Auto-generated method stub
		return this.customerDAO.getEMICardTypeCustomer();
	}

	@Override
	public Double createBalance() {
		// TODO Auto-generated method stub
		return this.customerDAO.createBalance();
	}

	@Override
	public Date createValidDate() {
		// TODO Auto-generated method stub
		return this.customerDAO.createValidDate();
	}

}
