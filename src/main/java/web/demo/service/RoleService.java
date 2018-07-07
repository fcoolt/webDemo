package web.demo.service;

import com.github.pagehelper.PageInfo;
import web.demo.entity.RoleEntity;

import java.util.List;
import java.util.Set;

public interface RoleService {

	/**
	 * ͨ�����Ʋ�ѯ��ɫ��Ϣ
	 * @param
	 * @return
	 */
	public RoleEntity getByRoleName(String roleName);

	/**
	 * ͨ��ID��ѯ��ɫ��Ϣ
	 * @param id
	 * @return
	 */
	public RoleEntity getByRoleId(Integer id);

	/**
	 * ��ѯ���н�ɫ��Ϣ
	 * @param
	 * @return
	 */
	public List<RoleEntity> getAllRole();

	/**
	 * ��ҳ��ѯ���н�ɫ��Ϣ
	 * @param
	 * @return
	 */
	public PageInfo<RoleEntity> queryByPage(Integer pageNo, Integer pageSize, String name);


	/**
	 * �����ɫ
	 * @param role
	 * @return ID
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
	 * @param ID
	 * @return ID
	 */
	public void deleteRole(Integer id);


}
