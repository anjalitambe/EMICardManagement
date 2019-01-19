package model;


	import java.io.Serializable;

import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity
	@Table(name="Admin")
	public class Admin implements Serializable {

		@Id
		@Column(name="adminId")
		@GeneratedValue(strategy=GenerationType.AUTO)
		int adminId;
		String adminName;
		String password;
		
		public Admin() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Admin(int adminId, String adminName, String password) {
			super();
			this.adminId = adminId;
			this.adminName = adminName;
			this.password = password;
		}
		@Override
		public String toString() {
			return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", password=" + password + "]";
		}
		public int getAdminId() {
			return adminId;
		}
		public void setAdminId(int adminId) {
			this.adminId = adminId;
		}
		public String getAdminName() {
			return adminName;
		}
		public void setAdminName(String adminName) {
			this.adminName = adminName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
}
