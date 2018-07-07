package web.demo.controller.system.permission;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import web.demo.entity.UserEntity;
import web.demo.service.UserService;

import web.demo.entity.RoleEntity;
import web.demo.service.RoleService;

import java.util.List;

import com.github.pagehelper.PageInfo;

import web.demo.common.vo.JsonDetail;
import web.demo.common.util.ResponseUtil;

/**
 * �û�Controller��
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/system/permission")
public class UserController {

	Logger log = Logger.getLogger(this.getClass());
	@Resource
	private UserService userService;
	@Resource
	private RoleService roleService;

	/**
	 * �û��б�
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/user_list")
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

		PageInfo<UserEntity> page = userService.queryByPage(pageNo,MaxPageSize,sname);
		model.addAttribute("userList", page.getList());
		model.addAttribute("total", page.getTotal());
		model.addAttribute("StartRow", page.getStartRow());
		model.addAttribute("PageSize", page.getPageSize());
		model.addAttribute("sname", sname);
		model.addAttribute("url", "system/permission/user_list.do");

		List<RoleEntity> roles = roleService.getAllRole();
		model.addAttribute("roles", roles);

		return "pages/system/permission/user_list";
	}

	/**
	 * ����û�
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/user_add")
	public String userAdd(ModelMap model, HttpServletRequest request) throws Exception {

		String username = request.getParameter("username");
		String roleid = request.getParameter("rolename");
		String psw = (new SimpleHash("MD5", request.getParameter("psw"), null, 1024)).toString();

		// �ж������Ƿ��Ѿ�����
		UserEntity user = userService.getByUserName(username);
		if (user != null) {
			request.getSession().setAttribute("rs", "�û����Ѵ��ڣ���������ӣ�");
			return "redirect:user_list.do";
		}

		try {
			user = new UserEntity();
			user.setUserName(username);
			user.setPassword(psw);
			user.setRoleId(Integer.parseInt(roleid));
			userService.insertUser(user);
			request.getSession().setAttribute("rs", "����û��ɹ���");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "����û�ʧ�ܣ�");
		}

		return "redirect:user_list.do";
	}

	/**
	 * �޸��û�
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/user_update")
	public String userUpdate(ModelMap model, HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String roleid = request.getParameter("rolename");
		String psw = (new SimpleHash("MD5", request.getParameter("psw"), null, 1024)).toString();

		// �ж������Ƿ��Ѿ�����
		UserEntity user = userService.getByUserName(username);
		if (user != null ) {
			String _id = user.getId().toString();
			if(!_id.equals(id)) {
				request.getSession().setAttribute("rs", "�û����Ѵ��ڣ��������޸ģ�");
				return "redirect:user_list.do";
			}
		}

		try {
			user = new UserEntity();
			user.setId(Integer.parseInt(id));
			user.setUserName(username);
			user.setPassword(psw);
			user.setRoleId(Integer.parseInt(roleid));
			userService.updateUser(user);
			request.getSession().setAttribute("rs", "�޸��û��ɹ���");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "�޸��û�ʧ�ܣ�");
		}
		return "redirect:user_list.do";
	}

	/**
	 * ɾ���û�
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/user_delete")
	public String userDelete(ModelMap model, HttpServletRequest request) throws Exception {
		try {
			String delIds = request.getParameter("delIds");
			String[] ids = delIds.split(",");
			for (String id : ids) {
				if (!StringUtils.isEmpty(id)) {
					userService.deleteUser(Integer.parseInt(id));
				}
			}
			request.getSession().setAttribute("rs", "ɾ���û��ɹ���");
		}catch (Exception e)
		{
			request.getSession().setAttribute("rs", "ɾ���û�ʧ�ܣ�");
		}

		return "redirect:user_list.do";
	}

	/**
	 * �����û�����
	 *
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/ajax_changePwd", method = RequestMethod.POST)
	public void ajaxChangePwd(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String psw = (new SimpleHash("MD5", request.getParameter("psw"), null, 1024)).toString();
		JsonDetail json = new JsonDetail();
		try {
			if (StringUtils.isEmpty(psw)) {
				json.setInfo("����������!");
				json.setStatus(false);
				ResponseUtil.json2Response(json.serializeToJSONString(), response);
			}
			//String s =  (String) SecurityUtils.getSubject().getPrincipal();

			UserEntity user = (UserEntity)SecurityUtils.getSubject().getPrincipal();
			user.setPassword(psw);
			userService.updateUser(user);
			json.setInfo("�޸�����ɹ���");
			json.setStatus(true);
		}catch (Exception e)
		{
			json.setInfo("�޸�����ʧ�ܣ�");
			json.setStatus(true);
		}
		ResponseUtil.json2Response(json.serializeToJSONString(), response);
	}

	/**
	 * �첽��ȡ�û���Ϣ
	 *
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/ajax_get_User", method = RequestMethod.POST)
	public void ajaxGetUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		JsonDetail json = new JsonDetail();
		try {
			if (StringUtils.isEmpty(id)) {
				json.setInfo("����������!");
				json.setStatus(false);
				ResponseUtil.json2Response(json.serializeToJSONString(), response);
			}

			UserEntity user = userService.getByUserId(Integer.parseInt(id));
			json.setStatus(true);
			json.setItems(user);

		} catch (Exception e) {
			log.error("�첽��ȡ�û����� --> ", e);
			e.printStackTrace();
			json.setStatus(false);
			json.setInfo("���ݳ���");
		}
		ResponseUtil.json2Response(json.serializeToJSONString(), response);
	}
}
