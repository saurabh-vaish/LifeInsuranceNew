package com.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ILoginDao;
import com.app.model.Login;
import com.app.service.ILoginService;

@Service
public class LoginServiceImpl implements ILoginService{

	@Autowired
	private ILoginDao dao;
	
	@Transactional(readOnly=true)
	public Login getUserById(Integer id) {
		return dao.getUserById(id);
	}

	
	@Transactional(readOnly=true)
	public Login getUserByUsername(String username) {
		return dao.getUserByUsername(username);
	}
	
}
