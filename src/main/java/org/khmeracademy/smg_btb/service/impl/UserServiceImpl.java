package org.khmeracademy.smg_btb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.khmeracademy.smg_btb.entity.Role;
import org.khmeracademy.smg_btb.entity.User;
import org.khmeracademy.smg_btb.entity.UserLogin;
import org.khmeracademy.smg_btb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class UserServiceImpl implements UserService {

	/*@Autowired
	private HttpHeaders header;*/
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	@Override
	public User findUserByUsername(String username) {
		
		UserLogin login = new UserLogin();
		login.setUsername(username);
		
		HttpEntity<Object> request = new HttpEntity<Object>(login);
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/get-user-by-email/" + username, HttpMethod.GET , request , Map.class) ;
		
		@SuppressWarnings("unchecked")
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		System.out.println(map);
		if(map.get("DATA") != null){
			
			@SuppressWarnings("unchecked")
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setUser_id((Integer)data.get("user_id"));
			u.setEmail((String)data.get("email"));
			u.setUsername((String)data.get("username"));
			u.setPassword((String) data.get("password"));
			
			List<Role> roles = new ArrayList<Role>();
			
			@SuppressWarnings("unchecked")
			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("roles");
			for (Map<String , Object> datas  : dataRole) {
				Role role = new Role();
				role.setRole_id((Integer)datas.get("role_id"));
				role.setRole_name((String) datas.get("role_name"));
				roles.add(role);
				
				System.out.println(role.getRole_id() + role.getRole_name());
				
			}
			System.out.println(dataRole);
			u.setRole(roles);
			
			System.out.println(map);
			
			return u;
		}
		
		return null;
	}

	
}
