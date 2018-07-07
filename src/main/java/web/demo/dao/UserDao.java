package web.demo.dao;

import java.util.List;
import java.util.Set;

import web.demo.entity.UserEntity;

public interface UserDao {

	/**
	 * 插入用户
	 * @param user
	 * @return Integer
	 */
	public Integer insertUser(UserEntity user);

	/**
	 * 修改用户
	 * @param user
	 * @return Integer
	 */
	public void updateUser(UserEntity user);

	/**
	 * 删除用户
	 * @param Integer
	 * @return Integer
	 */
	public void deleteUser(Integer id);

	/**
	 * 通过用户名查询用户
	 * @param userName
	 * @return
	 */
	public UserEntity getByUserName(String userName);

	/**
	 * 通过用户id查询用户
	 * @param id
	 * @return
	 */
	public UserEntity getByUserId(Integer id);
	
	/**
	 * 通过用户名查询角色信息
	 * @param userName
	 * @return
	 */
	public Set<String> getRoles(String userName);
	
	/**
	 * 通过用户名查询权限信息
	 * @param userName
	 * @return
	 */
	public Set<String> getPermissions(String userName);

	/**
	 * 查询所有用户信息
	 * @param
	 * @return
	 */
	public List<UserEntity> queryByPage(String name);

	/**
	 * 通过角色ID查询所有用户信息
	 * @param 角色ID
	 * @return
	 */
	public List<UserEntity> getByRoleId(Integer roleId);

}
