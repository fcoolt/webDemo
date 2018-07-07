package web.demo.entity;

import java.util.List;

public class RoleEntity {

	private Integer id;
	private String roleName;
	private String description;
	private List<ResourceEntity> resourcelist;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public  List<ResourceEntity> getResourcelist() {
		return resourcelist;
	}
	public void setResourcelist( List<ResourceEntity> resourcelist) {
		this.resourcelist = resourcelist;
	}

}
