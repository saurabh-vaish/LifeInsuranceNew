package com.app.service;

import com.app.model.Login;

public interface ILoginService {

	public Login getUserById(Integer id);
	
	public Login getUserByUsername(String username);

}
