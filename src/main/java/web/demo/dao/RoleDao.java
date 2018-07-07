package web.demo.dao;

import org.apache.ibatis.annotations.Param;
import web.demo.entity.RoleEntity;
import java.util.List;

public interface RoleDao {

	/**
	 * ͨ�����Ʋ�ѯ���н�ɫ
	 * @param
	 * @return
	 */
	public List<RoleEntity> queryByPage(String name);

	/**
	 * ��ѯ���н�ɫ
	 * @param
	 * @return
	 */
	public List<RoleEntity> getAllRole();

	/**
	 * ͨ����ɫ����ѯ�û�
	 * @param userName
	 * @return
	 */
	public RoleEntity getByRoleName(String roleName);

	/**
	 * ͨ����ɫID��ѯ�û�
	 * @param Id
	 * @return
	 */
	public RoleEntity getByRoleId(Integer id);

	/**
	 * �����ɫ
	 * @param role
	 * @return
	 */
	public Integer insertRole(RoleEntity role);

	/**
	 * �޸Ľ�ɫ
	 * @param role
	 * @return
	 */
	public void updateRole(RoleEntity role);

	/**
	 * ɾ����ɫ
	 * @param Integer
	 * @return Integer
	 */
	public void deleteRole(Integer id);

}
