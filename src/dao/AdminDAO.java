package dao;

import org.springframework.stereotype.Repository;

@Repository
public interface AdminDAO {

	boolean verifyUser1(String adminName, String password);
}
