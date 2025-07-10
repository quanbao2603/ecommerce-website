package model;

import java.sql.Date;

public class User {
	private String userID;
	private Role role;
	private String username;
	private String password;
	private String email;
	private Date createat;
	private boolean status;
	
	public User() {
		super();
	}

	public User(String userID, Role role, String username, String password, String email, Date createat,
			boolean status) {
		super();
		this.userID = userID;
		this.role = role;
		this.username = username;
		this.password = password;
		this.email = email;
		this.createat = createat;
		this.status = status;
	}

	public User(String userID, String username, String password) {
		super();
		this.userID = userID;
		this.username = username;
		this.password = password;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateat() {
		return createat;
	}

	public void setCreateat(Date createat) {
		this.createat = createat;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
