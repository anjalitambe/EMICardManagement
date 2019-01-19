package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductDAO;
import model.Product;
@Service
public class ProductServiceImpl implements IProductService {

	
	private ProductDAO productDAO;
	
	
	
	public ProductDAO getProductDAO() {
		return productDAO;
	}
	@Autowired
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	@Transactional
	@Override
	public List<Product> getAllProducts() {
		
		return productDAO.getAllProducts();
	}

	@Override
	public Product getProductById(Integer productId) {
	
		return productDAO.getProductById(productId);
	}

	@Override
	public void deleteProduct(Integer productId) {
		 productDAO.deleteProduct(productId);
		
	}
	
	@Override
	public void addProduct(Product product) {
	 productDAO.addProduct(product);
	}
	@Transactional
	@Override
	public void editProduct(Product product) {
		productDAO.editProduct(product);
		
	}

}
