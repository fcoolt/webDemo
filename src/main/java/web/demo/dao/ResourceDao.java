package web.demo.dao;

import web.demo.entity.ResourceEntity;
import web.demo.entity.TreeEntity;
import java.util.List;

public interface ResourceDao {


	/**
	 * 查询所有资源信息
	 * @param
	 * @return
	 */
	public List<ResourceEntity> queryAllByPage();

	/**
	 * 查询对应ID资源信息
	 * @param
	 * @return
	 */
	public List<ResourceEntity> queryIdByPage(Integer id);

	/**
	 * 获取所有资源信息树
	 * @param
	 * @return
	 */
	public List<TreeEntity> getAllResourceTree();


}
