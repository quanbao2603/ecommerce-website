package model;

public class Role {
	private String roleID;
	private String rolename;
	private String description;
	
	public Role() {
		super();
	}

	public Role(String roleID, String rolename, String description) {
		super();
		this.roleID = roleID;
		this.rolename = rolename;
		this.description = description;
	}

	public String getRoleID() {
		return roleID;
	}

	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
