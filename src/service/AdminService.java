package service;

import org.springframework.stereotype.Service;

@Service
public interface AdminService {

	boolean verifyUser1(String adminName, String password);

	//boolean verifyUser(String username, String password);
}
