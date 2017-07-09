package demo.pojos;

import java.util.List;

public class Vendor {
	int vendorId;
	String vFname;
	String vLname;
	String vAddress;
	String vEmail;
	String vMobNo;
	String vUserName;
	String vPassword;
	List<Menu> menuList;
	
	
	public Vendor()
	{
		
		
	}
	
	public Vendor(int vendorId, String vFname, String vLname, String vAddress, String vEmail, String vMobNo,
			String vUserName, String vPassword, List<Menu> menuList) {
		super();
		this.vendorId = vendorId;
		this.vFname = vFname;
		this.vLname = vLname;
		this.vAddress = vAddress;
		this.vEmail = vEmail;
		this.vMobNo = vMobNo;
		this.vUserName = vUserName;
		this.vPassword = vPassword;
		this.menuList = menuList;
	}
	public int getVendorId() {
		return vendorId;
	}
	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	public String getvFname() {
		return vFname;
	}
	public void setvFname(String vFname) {
		this.vFname = vFname;
	}
	public String getvLname() {
		return vLname;
	}
	public void setvLname(String vLname) {
		this.vLname = vLname;
	}
	public String getvAddress() {
		return vAddress;
	}
	public void setvAddress(String vAddress) {
		this.vAddress = vAddress;
	}
	public String getvEmail() {
		return vEmail;
	}
	public void setvEmail(String vEmail) {
		this.vEmail = vEmail;
	}
	public String getvMobNo() {
		return vMobNo;
	}
	public void setvMobNo(String vMobNo) {
		this.vMobNo = vMobNo;
	}
	public String getvUserName() {
		return vUserName;
	}
	public void setvUserName(String vUserName) {
		this.vUserName = vUserName;
	}
	public String getvPassword() {
		return vPassword;
	}
	public void setvPassword(String vPassword) {
		this.vPassword = vPassword;
	}
	public List<Menu> getMenuList() {
		return menuList;
	}
	public void setMenuList(List<Menu> menuList) {
		this.menuList = menuList;
	}
	
}
