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
 * �û�Controller��
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
	 * ��ɫ�б�
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/role_list")
	public String adminUserList(ModelMap model, HttpServletRequest request) throws Exception {
		//ÿҳ�����ʾ����
		int MaxPageSize = 10;

		int offset = 0;
		try{
			offset = Integer.parseInt(request.getParameter("pager.offset"));
		}catch (Exception e){}

		int pageNo = offset/MaxPageSize + 1;

		//���ò�ѯ����
		String sname = request.getParameter("sname");
		if(sname==null) sname = "";

		PageInfo<RoleEntity> page = roleService.queryByPage(pageNo,MaxPageSize,sname);
		model.addAttribute("RoleList", page.getList());
		model.addAttribute("total", page.getTotal());
		model.addAttribute("StartRow", page.getStartRow());
		model.addAttribute("PageSize", page.getPageSize());
		model.addAttribute("sname", sname);
		model.addAttribute("url", "system/permission/role_list.do");

		//�������οؼ�����
		List<TreeEntity> tree = resourceService.getAllResourceTree();
		String strJson =  new JSONSerializer().deepSerialize(tree);
		model.addAttribute("resourceListTree",strJson);

		return "pages/system/permission/role_list";
	}


	/**
	 * ��ӽ�ɫ
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

		// �ж������Ƿ��Ѿ�����
		RoleEntity role = roleService.getByRoleName(rolename);
		if (role != null) {
			request.getSession().setAttribute("rs", "��ɫ���Ѵ��ڣ���������ӣ�");
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
			//ִ�����
			roleService.insertRole(role);
			request.getSession().setAttribute("rs", "��ӽ�ɫ�ɹ���");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "��ӽ�ɫʧ�ܣ�");
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

		// �ж������Ƿ��Ѿ�����
		RoleEntity role = roleService.getByRoleName(rolename);
		if (role != null) {
			String _id = role.getId().toString();
			if(!_id.equals(id)) {
				request.getSession().setAttribute("rs", "��ɫ���Ѵ��ڣ��������޸ģ�");
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
			//ִ�����
			roleService.updateRole(role);
			request.getSession().setAttribute("rs", "�޸Ľ�ɫ�ɹ���");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "�޸Ľ�ɫʧ�ܣ�");
		}
		return "redirect:role_list.do";
	}

	/**
	 * ɾ����ɫ
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

			//����ɫ���Ƿ����û�����������û���ɾ��������ֹ
			for (String roleid : ids) {
				if (!StringUtils.isEmpty(roleid)) {
					List<UserEntity> userList = userService.getByRoleId(Integer.parseInt(roleid));
					if(userList.size()>0){
						request.getSession().setAttribute("rs", "�޷�ɾ������ʹ�õĽ�ɫ��");
						return "redirect:role_list.do";
					}
				}
			}

			for (String id : ids) {
				if (!StringUtils.isEmpty(id)) {
					roleService.deleteRole(Integer.parseInt(id));
				}
			}
			request.getSession().setAttribute("rs", "ɾ����ɫ�ɹ���");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "ɾ����ɫʧ�ܣ�");
		}

		return "redirect:role_list.do";
	}

	/**
	 * �첽��ȡ��ɫ��Ϣ
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
				json.setInfo("����������!");
				json.setStatus(false);
				ResponseUtil.json2Response(json.serializeToJSONString(), response);
			}

			RoleEntity role = roleService.getByRoleId(Integer.parseInt(id));
			json.setStatus(true);
			json.setItems(role);

		} catch (Exception e) {
			log.error("�첽��ȡ��ɫ���� --> ", e);
			e.printStackTrace();
			json.setStatus(false);
			json.setInfo("���ݳ���");
		}
		ResponseUtil.json2Response(json.serializeToJSONString(), response);
	}
}
