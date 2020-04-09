package com.project.productmanagement.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="product")
public class Product {
	@Id
	@Column(name="product_id")
    private int id;
	
	@Column(name="productName")
	@NotEmpty(message="productName cannot be null")
    private String productName;
	
	@Column(name="madeinName")
	@NotEmpty(message="madeinName cannot be null")
    private String madeinName;
	
	
	@Column(name="brand")
	@NotEmpty(message="brand cannot be null")
	private String brand;
	
	
	@Column(name="price")
	@Min(message="price minimum value is 1000",value=1000)
	private double price;
   
	public Product() {}
	public Product(int id,String productName, String madeinName,
			String brand, double price) {
		this.id=id;
		this.productName = productName;
		this.madeinName = madeinName;
		this.brand = brand;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName =productName;
	}
	public String getMadeinName() {
		return madeinName;
	}
	public void setMadeinName(String madeinName) {
		this.madeinName = madeinName;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", madeinName=" + madeinName + ", brand=" + brand + ", price=" + price+ "]";
	}
    
}

