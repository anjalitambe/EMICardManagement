package model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;






@Entity
@Table(name="Product")
public class Product implements Serializable{
	@Id
	@Column(name="productId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;
	
	
	@Column(name="category")
	private String productCategory;
	
	@Column(name = "description")
	private String productDescription;
	
	@Column(name = "name")
	private String productName;
	
	
	@Column(name = "price")
	private double productPrice;
	
	@Column(name = "unit")
	private String unitStock;


	
	
	@Column(name = "image")
	@Lob
	private Blob productImage;
	
	
	
	
	public Product(int productId, String productCategory, String productDescription, String productName,
			double productPrice, String unitStock, Blob productImage) {
		super();
		this.productId = productId;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.productName = productName;
		this.productPrice = productPrice;
		this.unitStock = unitStock;
		this.productImage = productImage;
	}

	public Product() {
		super();
	}
	
	

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getUnitStock() {
		return unitStock;
	}

	public void setUnitStock(String unitStock) {
		this.unitStock = unitStock;
	}

	public Blob getProductImage() {
		return productImage;
	}

	public void setProductImage(Blob productImage) {
		this.productImage = productImage;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productCategory=" + productCategory + ", productDescription="
				+ productDescription + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", unitStock=" + unitStock + ", productImage=" + productImage + "]";
	}



}
