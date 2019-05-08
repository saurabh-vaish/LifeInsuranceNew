package com.app.dao;

import com.app.model.Login;

public interface ILoginDao {
	
	public Login getUserById(Integer id);
	
	public Login getUserByUsername(String username);
	
}
