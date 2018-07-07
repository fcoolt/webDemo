package web.demo.dao;

import java.util.List;
import java.util.Set;

import web.demo.entity.UserEntity;

public interface UserDao {

	/**
	 * �����û�
	 * @param user
	 * @return Integer
	 */
	public Integer insertUser(UserEntity user);

	/**
	 * �޸��û�
	 * @param user
	 * @return Integer
	 */
	public void updateUser(UserEntity user);

	/**
	 * ɾ���û�
	 * @param Integer
	 * @return Integer
	 */
	public void deleteUser(Integer id);

	/**
	 * ͨ���û�����ѯ�û�
	 * @param userName
	 * @return
	 */
	public UserEntity getByUserName(String userName);

	/**
	 * ͨ���û�id��ѯ�û�
	 * @param id
	 * @return
	 */
	public UserEntity getByUserId(Integer id);
	
	/**
	 * ͨ���û�����ѯ��ɫ��Ϣ
	 * @param userName
	 * @return
	 */
	public Set<String> getRoles(String userName);
	
	/**
	 * ͨ���û�����ѯȨ����Ϣ
	 * @param userName
	 * @return
	 */
	public Set<String> getPermissions(String userName);

	/**
	 * ��ѯ�����û���Ϣ
	 * @param
	 * @return
	 */
	public List<UserEntity> queryByPage(String name);

	/**
	 * ͨ����ɫID��ѯ�����û���Ϣ
	 * @param ��ɫID
	 * @return
	 */
	public List<UserEntity> getByRoleId(Integer roleId);

}
