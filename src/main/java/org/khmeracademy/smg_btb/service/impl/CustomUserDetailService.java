package org.khmeracademy.smg_btb.service.impl;

import org.khmeracademy.smg_btb.entity.User;
import org.khmeracademy.smg_btb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("CustomUserDetailService")
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	private UserServiceImpl userService;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		User user = userService.findUserByEmail(email);
		if(user == null){
			System.out.println("User not found");
			throw new UsernameNotFoundException("User not found");
		}
		//System.out.println(user.getRole().get(0).getRole_name());
	
		return user;
	}

}
