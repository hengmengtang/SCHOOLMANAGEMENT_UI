package org.khmeracademy.smg_btb.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

public class UserLogin {

	private String username;
	
	@JsonProperty("EMAIL")
	private String email;
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
