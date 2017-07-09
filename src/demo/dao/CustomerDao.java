package demo.dao;

import java.util.ArrayList;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateTemplate;
import demo.pojos.CustomerPojo;;
public class CustomerDao {

	public CustomerDao() {
		// TODO Auto-generated constructor stub
	}
	
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public void saveCustomerDetails(CustomerPojo customer )
	{
		template.save(customer);
	}
	
	public CustomerPojo getByUserName(String userName) {
		CustomerPojo user=null;
		DetachedCriteria unameCriteria=DetachedCriteria.forClass(CustomerPojo.class);
		//System.out.println(userName+" in UserDao");
		unameCriteria.add(Restrictions.eq("userName", userName));
		ArrayList<CustomerPojo> uList=(ArrayList<CustomerPojo>) template.findByCriteria(unameCriteria);
		if( uList.size()!=0){
		user=uList.get(0);
		return user;
		}
		return null;
	}
}
