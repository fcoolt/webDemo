package web.demo.service;

import java.util.List;
import java.util.Set;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import web.demo.entity.UserEntity;

public interface UserService {

	/**
	 * �����û�
	 * @param user
	 * @return ID
	 */
	public Integer insertUser(UserEntity user);

	/**
	 * �޸��û�
	 * @param user
	 * @return ID
	 */
	public void updateUser(UserEntity user);

	/**
	 * ɾ���û�
	 * @param ID
	 * @return ID
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
	 * ��ҳ��ѯ�����û���Ϣ
	 * @param
	 * @return
	 */
	public PageInfo<UserEntity> queryByPage(Integer pageNo,Integer pageSize,String name);

	/**
	 * ͨ����ɫID��ѯ�����û���Ϣ
	 * @param ��ɫID
	 * @return
	 */
	public List<UserEntity> getByRoleId(Integer roleId);

}
