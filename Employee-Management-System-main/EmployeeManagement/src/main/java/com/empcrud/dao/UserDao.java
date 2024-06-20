package com.empcrud.dao;

import com.empcrud.model.User;

public interface UserDao {
	
	public int saveUser(User user);

	public User loginUser(String email, String passsword);

}
