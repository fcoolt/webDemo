package web.demo.entity;

import java.util.List;

public class ResourceEntity {

	private Integer id;
	private String resourceName;
	private String href;
	private Integer order_no;
	private Integer parentid;
	// 子菜单
	private List<ResourceEntity> children;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}

	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}

	public Integer getOrder_no() {
		return order_no;
	}
	public void setOrder_no(Integer order_no) {
		this.order_no = order_no;
	}

	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public List<ResourceEntity> getChildren(){
		return this.children;
	}

	public void setChildren(List<ResourceEntity> children) {
		this.children = children;
	}

}
