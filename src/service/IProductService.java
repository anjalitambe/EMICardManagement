package service;

import java.util.List;

import org.springframework.stereotype.Service;

import model.Product;

@Service
public interface IProductService {
List<Product> getAllProducts();
	
	Product getProductById(Integer productId);
	
	void deleteProduct(Integer productId);
	
	void addProduct(Product product);
	
	void editProduct(Product product);

}
