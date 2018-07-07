package web.demo.dao;

import web.demo.entity.ResourceEntity;
import web.demo.entity.TreeEntity;
import java.util.List;

public interface ResourceDao {


	/**
	 * ��ѯ������Դ��Ϣ
	 * @param
	 * @return
	 */
	public List<ResourceEntity> queryAllByPage();

	/**
	 * ��ѯ��ӦID��Դ��Ϣ
	 * @param
	 * @return
	 */
	public List<ResourceEntity> queryIdByPage(Integer id);

	/**
	 * ��ȡ������Դ��Ϣ��
	 * @param
	 * @return
	 */
	public List<TreeEntity> getAllResourceTree();


}
