package model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name="Customer")
public class Customer implements Serializable{
	
	@Id
	@Column(name="customerId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int customerId;
	
	private String firstName;
	private String lastName;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private String email;
	private int phoneNumber;
	private String password;
	private String gender;
	
	

	@OneToOne(cascade = CascadeType.ALL)
	//@JoinColumn(name="addressId")
	private Address address;

	
//	@OneToOne(cascade = CascadeType.ALL)
//	//@JoinColumn(name = "userId")
//	private User users;
	
	@OneToOne(cascade = CascadeType.ALL)
	//@JoinColumn(name = "bankId")
	private Bank bank;
	
@OneToOne(cascade = CascadeType.ALL)
	//@JoinColumn(name = "cardId")
	private EMICard card;

	public Customer(int customerId, String firstName, String lastName, Date dob, String email, int phoneNumber,
			String password, String gender, Address address, Bank bank, EMICard card) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.gender = gender;
		this.address = address;
		//this.users = users;
		this.bank = bank;
		this.card = card;
	}

	public Customer() {
		super();
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName=" + firstName + ", lastName=" + lastName + ", dob="
				+ dob + ", email=" + email + ", phoneNumber=" + phoneNumber + ", password=" + password + ", gender="
				+ gender + ", address=" + address +  ", bank=" + bank + ", card=" + card + "]";
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

//	public User getUsers() {
//		return users;
//	}
//
//	public void setUsers(User users) {
//		this.users = users;
//	}

	public Bank getBank() {
		return bank;
	}

	public void setBank(Bank bank) {
		this.bank = bank;
	}

	public EMICard getCard() {
		return card;
	}

	public void setCard(EMICard card) {
		this.card = card;
	}
	
	
	
	


	}
