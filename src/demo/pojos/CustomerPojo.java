package demo.pojos;

public class CustomerPojo {
	int userId;
	String fname;
	String lname;
	String Address;
	String email;
	String mobNo;
	String userName;
	String password;
	
	public CustomerPojo() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public CustomerPojo(int userId, String fname, String lname, String address, String email, String mobNo,
			String userName, String password) {
		super();
		this.userId = userId;
		this.fname = fname;
		this.lname = lname;
		Address = address;
		this.email = email;
		this.mobNo = mobNo;
		this.userName = userName;
		this.password = password;
	}




	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobNo() {
		return mobNo;
	}
	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
