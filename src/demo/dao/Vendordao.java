package demo.dao;




import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateTemplate;

import demo.pojos.CustomerPojo;
import demo.pojos.Vendor;

public class Vendordao {
	
     public Vendordao() {
 	
      }
	
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public void InsertVendorRecord(Vendor v)
	{
		template.save(v);
	}
	
	public List  getBy_VendorUserName(String userName) {
	String query="from Vendor v where v.vUserName=?";
	List<Object> l=template.find(query,userName);
	return l;
		
	}
	
}
