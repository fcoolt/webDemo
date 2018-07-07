package web.demo.controller.system.permission;

import com.github.pagehelper.PageInfo;
import flexjson.JSONSerializer;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.demo.common.util.ResponseUtil;
import web.demo.common.vo.JsonDetail;
import web.demo.entity.*;
import web.demo.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * 用户Controller层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/system/permission")
public class RoleController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource
	private UserService userService;
	@Resource
	private RoleService roleService;
	@Resource
	private ResourceService resourceService;

	/**
	 * 角色列表
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/role_list")
	public String adminUserList(ModelMap model, HttpServletRequest request) throws Exception {
		//每页最大显示行数
		int MaxPageSize = 10;

		int offset = 0;
		try{
			offset = Integer.parseInt(request.getParameter("pager.offset"));
		}catch (Exception e){}

		int pageNo = offset/MaxPageSize + 1;

		//设置查询条件
		String sname = request.getParameter("sname");
		if(sname==null) sname = "";

		PageInfo<RoleEntity> page = roleService.queryByPage(pageNo,MaxPageSize,sname);
		model.addAttribute("RoleList", page.getList());
		model.addAttribute("total", page.getTotal());
		model.addAttribute("StartRow", page.getStartRow());
		model.addAttribute("PageSize", page.getPageSize());
		model.addAttribute("sname", sname);
		model.addAttribute("url", "system/permission/role_list.do");

		//导入树形控件数据
		List<TreeEntity> tree = resourceService.getAllResourceTree();
		String strJson =  new JSONSerializer().deepSerialize(tree);
		model.addAttribute("resourceListTree",strJson);

		return "pages/system/permission/role_list";
	}


	/**
	 * 添加角色
	 *
	 * @return
	 */
	@RequestMapping(value = "/role_add")
	public String roleAdd(ModelMap model, HttpServletRequest request) throws Exception {

		String rolename = request.getParameter("rolename");
		String description = request.getParameter("description");
		String resourcelist = request.getParameter("ResourceSelValue");
		String[] resIds = null;
		if(resourcelist != null) resIds = resourcelist.split(",");

		// 判断名称是否已经存在
		RoleEntity role = roleService.getByRoleName(rolename);
		if (role != null) {
			request.getSession().setAttribute("rs", "角色名已存在，请重新添加！");
			return "redirect:role_list.do";
		}
		try {
			role = new RoleEntity();
			role.setRoleName(rolename);
			role.setDescription(description);
			List<ResourceEntity> reslist = new ArrayList<ResourceEntity>();
			for(int i=0;i<resIds.length;i++) {
				ResourceEntity res = new ResourceEntity();
				res.setId(Integer.parseInt(resIds[i]));
				reslist.add(res);
			}
			role.setResourcelist(reslist);
			//执行添加
			roleService.insertRole(role);
			request.getSession().setAttribute("rs", "添加角色成功！");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "添加角色失败！");
		}
		return "redirect:role_list.do";
	}

	@RequestMapping(value = "/role_update")
	public String roleUpdate(ModelMap model, HttpServletRequest request) throws Exception {

		String id = request.getParameter("id");
		String rolename = request.getParameter("rolename");
		String description = request.getParameter("description");
		String resourcelist = request.getParameter("ResourceSelValue");
		String[] resIds = null;
		if(resourcelist != null) resIds = resourcelist.split(",");

		// 判断名称是否已经存在
		RoleEntity role = roleService.getByRoleName(rolename);
		if (role != null) {
			String _id = role.getId().toString();
			if(!_id.equals(id)) {
				request.getSession().setAttribute("rs", "角色名已存在，请重新修改！");
				return "redirect:role_list.do";
			}
		}

		try {
			role = new RoleEntity();
			role.setId(Integer.parseInt(id));
			role.setRoleName(rolename);
			role.setDescription(description);
			List<ResourceEntity> reslist = new ArrayList<ResourceEntity>();
			for(int i=0;i<resIds.length;i++) {
				ResourceEntity res = new ResourceEntity();
				res.setId(Integer.parseInt(resIds[i]));
				reslist.add(res);
			}
			role.setResourcelist(reslist);
			//执行添加
			roleService.updateRole(role);
			request.getSession().setAttribute("rs", "修改角色成功！");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "修改角色失败！");
		}
		return "redirect:role_list.do";
	}

	/**
	 * 删除角色
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/role_delete")
	public String roleDelete(ModelMap model, HttpServletRequest request) throws Exception {
		try {
			String delIds = request.getParameter("delIds");
			String[] ids = delIds.split(",");

			//检测角色下是否有用户，如果存在用户则删除操作终止
			for (String roleid : ids) {
				if (!StringUtils.isEmpty(roleid)) {
					List<UserEntity> userList = userService.getByRoleId(Integer.parseInt(roleid));
					if(userList.size()>0){
						request.getSession().setAttribute("rs", "无法删除正在使用的角色！");
						return "redirect:role_list.do";
					}
				}
			}

			for (String id : ids) {
				if (!StringUtils.isEmpty(id)) {
					roleService.deleteRole(Integer.parseInt(id));
				}
			}
			request.getSession().setAttribute("rs", "删除角色成功！");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "删除角色失败！");
		}

		return "redirect:role_list.do";
	}

	/**
	 * 异步获取角色信息
	 *
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/ajax_get_Role", method = RequestMethod.POST)
	public void ajaxGetRole(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		JsonDetail json = new JsonDetail();
		try {
			if (StringUtils.isEmpty(id)) {
				json.setInfo("参数不完整!");
				json.setStatus(false);
				ResponseUtil.json2Response(json.serializeToJSONString(), response);
			}

			RoleEntity role = roleService.getByRoleId(Integer.parseInt(id));
			json.setStatus(true);
			json.setItems(role);

		} catch (Exception e) {
			log.error("异步获取角色出错 --> ", e);
			e.printStackTrace();
			json.setStatus(false);
			json.setInfo("数据出错");
		}
		ResponseUtil.json2Response(json.serializeToJSONString(), response);
	}
}
