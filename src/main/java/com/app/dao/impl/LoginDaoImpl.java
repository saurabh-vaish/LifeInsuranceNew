package com.app.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.ILoginDao;
import com.app.model.Login;

@Repository
public class LoginDaoImpl  implements ILoginDao{

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Login getUserById(Integer id) {
		
		Login login =ht.get(Login.class,id);
		System.out.println(login);
		return login;
	}
	
	@Override
	public Login getUserByUsername(String username) {

		Login l=null;
		
		List<Login> login = (List<Login>) ht.findByCriteria(
				DetachedCriteria.forClass(Login.class)
				.add(Restrictions.eq("username", username))
				);
		
		if(login!=null && !login.isEmpty())
		{
			l=login.get(0);
		}
		return l;
	}
	

}
