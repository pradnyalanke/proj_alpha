package demo.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import demo.dao.CustomerDao;
import demo.pojos.CustomerPojo;

public class CustomerLoginController implements Controller {

	
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String username=req.getParameter("userName");
		String password=req.getParameter("password");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Bean.xml");
		
		CustomerDao dao= (CustomerDao) app.getBean("customerDao");
		
		CustomerPojo cust=null;
		
		if((cust=dao.getByUserName(username))!=null)
		{
			HttpSession ses=req.getSession(true);
			ses.setAttribute("username",cust.getUserName());
			ses.setAttribute("email",cust.getEmail());
			return new ModelAndView("CustomerHome");
		}
		else
		{
			return new ModelAndView("continue");
		}
		
		
		
	}

}
