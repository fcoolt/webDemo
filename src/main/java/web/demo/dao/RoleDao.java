package web.demo.dao;

import org.apache.ibatis.annotations.Param;
import web.demo.entity.RoleEntity;
import java.util.List;

public interface RoleDao {

	/**
	 * 通过名称查询所有角色
	 * @param
	 * @return
	 */
	public List<RoleEntity> queryByPage(String name);

	/**
	 * 查询所有角色
	 * @param
	 * @return
	 */
	public List<RoleEntity> getAllRole();

	/**
	 * 通过角色名查询用户
	 * @param userName
	 * @return
	 */
	public RoleEntity getByRoleName(String roleName);

	/**
	 * 通过角色ID查询用户
	 * @param Id
	 * @return
	 */
	public RoleEntity getByRoleId(Integer id);

	/**
	 * 插入角色
	 * @param role
	 * @return
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
	 * @param Integer
	 * @return Integer
	 */
	public void deleteRole(Integer id);

}
