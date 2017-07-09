package demo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import demo.dao.CustomerDao;
import demo.pojos.CustomerPojo;

public class CustomerController implements Controller {

	
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String addr=req.getParameter("Address");
		String email=req.getParameter("email");
		String mobNo=req.getParameter("mobNo");
		String uname=req.getParameter("userName");
		String pass=req.getParameter("password");
		
		CustomerPojo cust=new CustomerPojo(0,fname,lname,addr,email,mobNo,uname,pass);
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Bean.xml");
		
		CustomerDao cdao= (CustomerDao) app.getBean("customerDao");
		cdao.saveCustomerDetails(cust);
		return new ModelAndView("CustomerLoginPage");
	}

}
