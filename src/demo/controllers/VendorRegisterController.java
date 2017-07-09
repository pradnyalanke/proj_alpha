package demo.controllers;

import java.awt.List;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import demo.dao.Vendordao;
import demo.pojos.Menu;
import demo.pojos.Vendor;

public class VendorRegisterController implements Controller {

	
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String vFname =req.getParameter("fname");
		String vLname=req.getParameter("lname");
		String vAddress=req.getParameter("Address");
		String vEmail=req.getParameter("email");
		String vMobNo=req.getParameter("mobNo");
		String vUserName=req.getParameter("userName");
		String vPassword=req.getParameter("password");
		
		String mName1=req.getParameter("mname1");
		String mPrice1=req.getParameter("mprice1");
		String quantity1=req.getParameter("mcost1");
		String mName2=req.getParameter("mname2");
		String mPrice2=req.getParameter("mprice2");
		String quantity2=req.getParameter("mcost2");
		String mName3=req.getParameter("mname3");
		String mPrice3=req.getParameter("mprice3");
		String quantity3=req.getParameter("mcost3");
		
		ArrayList<Menu> menulist = new ArrayList<Menu>();
		menulist.add(new Menu(0,mName1,mPrice1,quantity1));
		menulist.add(new Menu(0,mName2,mPrice2,quantity2));
		menulist.add(new Menu(0,mName3,mPrice3,quantity3));
		
		Vendor vendor=new Vendor(0,vFname,vLname,vAddress,vEmail,vMobNo,vUserName,vPassword,menulist);
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Bean.xml");
		
		Vendordao vdao= (Vendordao) app.getBean("vendorDao");
		
		vdao.InsertVendorRecord(vendor);
		
		return new ModelAndView("VendorHome");
	}

}
