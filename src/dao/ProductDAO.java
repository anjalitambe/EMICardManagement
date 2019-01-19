package dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import model.Product;
@Repository
public interface ProductDAO {
	
	
	List<Product> getAllProducts();
	
	Product getProductById(Integer productId);
	
	void deleteProduct(Integer productId);
	
	void addProduct(Product product);
	
	void editProduct(Product product);

}
