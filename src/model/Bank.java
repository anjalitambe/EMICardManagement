package model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "Bank")
public class Bank implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bankId;
	private String bankName;
	
	private int savingsAccNo;
	private String IFSCCode;
	
	private double balance;
	
//	@OneToOne(mappedBy = "bank")
//	private Customer customer;
	

	public Bank(int bankId, String bankName, int savingsAccNo, String iFSCCode, double balance, Customer customer) {
		super();
		this.bankId = bankId;
		this.bankName = bankName;
		this.savingsAccNo = savingsAccNo;
		IFSCCode = iFSCCode;
		this.balance = balance;
		//this.customer = customer;
	}

	@Override
	public String toString() {
		return "Bank [bankId=" + bankId + ", bankName=" + bankName + ", savingsAccNo=" + savingsAccNo + ", IFSCCode="
				+ IFSCCode + ", balance=" + balance  + "]";
	}

	public int getBankId() {
		return bankId;
	}

	public void setBankId(int bankId) {
		this.bankId = bankId;
	}

//	public Customer getCustomer() {
//		return customer;
//	}
//
//	public void setCustomer(Customer customer) {
//		this.customer = customer;
//	}

	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public int getSavingsAccNo() {
		return savingsAccNo;
	}
	public void setSavingsAccNo(int savingsAccNo) {
		this.savingsAccNo = savingsAccNo;
	}
	public String getIFSCCode() {
		return IFSCCode;
	}
	public void setIFSCCode(String iFSCCode) {
		IFSCCode = iFSCCode;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Bank() {
		super();
	}

	
	



}
