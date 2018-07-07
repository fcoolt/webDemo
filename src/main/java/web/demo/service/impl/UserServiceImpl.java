package web.demo.service.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import web.demo.dao.UserDao;
import web.demo.entity.UserEntity;
import web.demo.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao;

	public Integer insertUser(UserEntity user){return userDao.insertUser(user);}

	public void updateUser(UserEntity user){ userDao.updateUser(user); }

	public void deleteUser(Integer id){userDao.deleteUser(id);}

	public UserEntity getByUserName(String userName) {
		return userDao.getByUserName(userName);
	}

	public UserEntity getByUserId(Integer id){
		return userDao.getByUserId(id);
	}

	public Set<String> getRoles(String userName) {
		return userDao.getRoles(userName);
	}

	public Set<String> getPermissions(String userName) {
		return userDao.getPermissions(userName);
	}

	public PageInfo<UserEntity> queryByPage(Integer pageNo, Integer pageSize, String name) {
		String orderBy = "id" + " asc";//按照排序字段 倒序desc 排序asc
		PageHelper.startPage(pageNo, pageSize, orderBy);
		List<UserEntity> list = userDao.queryByPage(name);
		//用PageInfo对结果进行包装
		PageInfo<UserEntity> page = new PageInfo<UserEntity>(list);

		//测试PageInfo全部属性
		/*
		System.out.println(page.getPageNum());
		System.out.println(page.getPageSize());
		System.out.println(page.getStartRow());
		System.out.println(page.getEndRow());
		System.out.println(page.getTotal());
		System.out.println(page.getPages());
		System.out.println(page.getFirstPage());
		System.out.println(page.getLastPage());
		System.out.println(page.isHasPreviousPage());
		System.out.println(page.isHasNextPage());
		*/
		return page;
	}

	public List<UserEntity> getByRoleId(Integer roleId){
		return userDao.getByRoleId(roleId);
	}
}
