package demo.pojos;

public class Menu {
	
	int menuId;
	String menuName;
	String Price;
	String quantity;
	
	public Menu() {
		// TODO Auto-generated constructor stub
	}

	public Menu(int menuId, String menuName, String price, String quantity) {
		super();
		this.menuId = menuId;
		this.menuName = menuName;
		Price = price;
		this.quantity = quantity;
	}

	public int getMenuId() {
		return menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	

}
