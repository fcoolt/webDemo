package web.demo.service;

import com.github.pagehelper.PageInfo;
import web.demo.entity.ResourceEntity;
import web.demo.entity.TreeEntity;

import java.util.List;
import java.util.Set;

public interface ResourceService {

	/**
	 * ��ҳ��ѯ������Դ��Ϣ
	 * @param
	 * @return
	 */
	public PageInfo<ResourceEntity> queryAllByPage(Integer pageNo, Integer pageSize);

	/**
	 * ��ѯ��ӦID��Դ��Ϣ
	 * @param
	 * @return
	 */
	public PageInfo<ResourceEntity> queryIdByPage(Integer pageNo, Integer pageSize, Integer id);

	/**
	 * ��ȡ������Դ��Ϣ��
	 * @param
	 * @return
	 */
	public List<TreeEntity> getAllResourceTree();

}
