package demo.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import demo.dao.Vendordao;
import demo.pojos.Vendor;

public class VendorLoginController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String userName=req.getParameter("vuserName");
		String password=req.getParameter("vpassword");
		
		ApplicationContext app= new ClassPathXmlApplicationContext("Bean.xml");
		Vendordao ven= (Vendordao) app.getBean("vendorDao");
		
		 List<Object> l= (List<Object>)ven.getBy_VendorUserName(userName);
		
		 	Vendor vendor=null;
		 for (Object object : l) {
			vendor=(Vendor) object;
		}
		 
		if(vendor != null && vendor.getvPassword().equals(password))
		{	
			HttpSession ses=req.getSession(true);
			ses.setAttribute("userName",vendor.getvUserName());
			
			return new ModelAndView("VendorHome");
		}
		
		
		return new ModelAndView("VendorLoginPage");
	}

}
