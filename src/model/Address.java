package model;

import java.io.Serializable;
import model.Customer;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Address")
public class Address implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="addressId")
	private int addressId;
	
	private String city;

	private int pincode;
	private String state;
	private String country;
	
//	@OneToOne(mappedBy = "address")
//	private Customer customer;

	public Address(int addressId, String city, int pincode, String state, String country, Customer customer) {
		super();
		this.addressId = addressId;
		this.city = city;
		this.pincode = pincode;
		this.state = state;
		this.country = country;
		//this.customer = customer;
	}

	public Address() {
		super();
	}

	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", city=" + city + ", pincode=" + pincode + ", state=" + state
				+ ", country=" + country + "]";
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

//	public Customer getCustomer() {
//		return customer;
//	}
//
//	public void setCustomer(Customer customer) {
//		this.customer = customer;
//	}
//	
//	
	

}
