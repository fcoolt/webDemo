package web.demo.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import web.demo.dao.RoleDao;
import web.demo.entity.RoleEntity;
import web.demo.service.RoleService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

@Service("roleService")
public class RoleServiceImpl implements RoleService{

	@Resource
	private RoleDao roleDao;
	
	public  RoleEntity getByRoleName(String roleName) {
		return roleDao.getByRoleName(roleName);
	}

	public RoleEntity getByRoleId(Integer id){
		return roleDao.getByRoleId(id);
	}

	public List<RoleEntity> getAllRole(){
		return  roleDao.getAllRole();
	}

	public PageInfo<RoleEntity> queryByPage(Integer pageNo, Integer pageSize, String name)
	{

		String orderBy = "id" + " asc";//按照排序字段 倒序desc 排序asc
		PageHelper.startPage(pageNo, pageSize, orderBy);

		List<RoleEntity> list = roleDao.queryByPage(name);

		//用PageInfo对结果进行包装

		PageInfo<RoleEntity> page = new PageInfo<RoleEntity>(list);



		return page;
	}

	public Integer insertRole(RoleEntity role){
		return roleDao.insertRole(role);
	}

	public void updateRole(RoleEntity role){
		roleDao.updateRole(role);
	}

	public void deleteRole(Integer id){roleDao.deleteRole(id);}
}
