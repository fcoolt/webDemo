package web.demo.service;

import com.github.pagehelper.PageInfo;
import web.demo.entity.ResourceEntity;
import web.demo.entity.TreeEntity;

import java.util.List;
import java.util.Set;

public interface ResourceService {

	/**
	 * 分页查询所有资源信息
	 * @param
	 * @return
	 */
	public PageInfo<ResourceEntity> queryAllByPage(Integer pageNo, Integer pageSize);

	/**
	 * 查询对应ID资源信息
	 * @param
	 * @return
	 */
	public PageInfo<ResourceEntity> queryIdByPage(Integer pageNo, Integer pageSize, Integer id);

	/**
	 * 获取所有资源信息树
	 * @param
	 * @return
	 */
	public List<TreeEntity> getAllResourceTree();

}
