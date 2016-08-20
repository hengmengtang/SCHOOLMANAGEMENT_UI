package org.khmeracademy.smg_btb.entity;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class User implements UserDetails{

	private static final long serialVersionUID = 1L;

	private int user_id;
	private String username;
	private String password;
	private String email;
	private List<Role> role;
	private String phone;
	private String date;
	private boolean status;

	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<Role> getRole() {
		return role;
	}

	public void setRole(List<Role> role) {
		this.role = role;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	private boolean accountNonExpired = true;
	private boolean accountNonLocked = true;
    private boolean credentialsNonExpired = true;
    private boolean enabled = true;
    
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {	
		return role;
	}

	@Override
	public String getPassword() {
	
		return password;
	}

	@Override
	public String getUsername() {
		
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		
		return accountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
	
		return accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		
		return credentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
	
		return enabled;
	}

}
