package web.demo.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.dom4j.Element;
import org.springframework.stereotype.Service;
import web.demo.dao.ResourceDao;
import web.demo.entity.ResourceEntity;
import web.demo.entity.TreeEntity;
import web.demo.service.ResourceService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service("ResourceService")
public class ResourceServiceImpl implements ResourceService{
	@Resource
	private ResourceDao resourceDao;

	public PageInfo<ResourceEntity> queryAllByPage(Integer pageNo, Integer pageSize) {
		PageHelper.startPage(pageNo, pageSize);
		List<ResourceEntity> list = resourceDao.queryAllByPage();
		//用PageInfo对结果进行包装
		PageInfo<ResourceEntity> page = new PageInfo<ResourceEntity>(list);
		return page;
	}

	public PageInfo<ResourceEntity> queryIdByPage(Integer pageNo, Integer pageSize, Integer id)
	{
		PageHelper.startPage(pageNo, pageSize);
		List<ResourceEntity> list = resourceDao.queryIdByPage(id);
		List<ResourceEntity> listChildren = new Page<ResourceEntity>();

		for (ResourceEntity lresourceEntity : list) {
			if (lresourceEntity == null) {
				continue;
			}

			for (ResourceEntity lresourceEntityChrid : lresourceEntity.getChildren()){
				if (lresourceEntityChrid == null) {
					continue;
				}
				listChildren.add(lresourceEntityChrid);
			}
		}

		for (ResourceEntity lresourceEntity : listChildren) {
			if (lresourceEntity == null) {
				continue;
			}
			list.add(lresourceEntity);
		}

		//用PageInfo对结果进行包装
		PageInfo<ResourceEntity> page = new PageInfo<ResourceEntity>(list);

		return page;
	}

	public List<TreeEntity> getAllResourceTree(){
		return resourceDao.getAllResourceTree();
	}
}
