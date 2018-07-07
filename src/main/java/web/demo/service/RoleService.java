package web.demo.service;

import com.github.pagehelper.PageInfo;
import web.demo.entity.RoleEntity;

import java.util.List;
import java.util.Set;

public interface RoleService {

	/**
	 * 通过名称查询角色信息
	 * @param
	 * @return
	 */
	public RoleEntity getByRoleName(String roleName);

	/**
	 * 通过ID查询角色信息
	 * @param id
	 * @return
	 */
	public RoleEntity getByRoleId(Integer id);

	/**
	 * 查询所有角色信息
	 * @param
	 * @return
	 */
	public List<RoleEntity> getAllRole();

	/**
	 * 分页查询所有角色信息
	 * @param
	 * @return
	 */
	public PageInfo<RoleEntity> queryByPage(Integer pageNo, Integer pageSize, String name);


	/**
	 * 插入角色
	 * @param role
	 * @return ID
	 */
	public Integer insertRole(RoleEntity role);

	/**
	 * 修改角色
	 * @param role
	 * @return
	 */
	public void updateRole(RoleEntity role);

	/**
	 * 删除角色
	 * @param ID
	 * @return ID
	 */
	public void deleteRole(Integer id);


}
