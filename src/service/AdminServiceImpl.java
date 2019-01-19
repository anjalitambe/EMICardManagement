package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public boolean verifyUser1(String adminName, String password) {
		System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
		// TODO Auto-generated method stub
		return adminDAO.verifyUser1(adminName,password);
	}

	
}
