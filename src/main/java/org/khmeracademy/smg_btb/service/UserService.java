package org.khmeracademy.smg_btb.service;

import org.khmeracademy.smg_btb.entity.User;

public interface UserService {

	public User findUserByUsername(String username);
}
