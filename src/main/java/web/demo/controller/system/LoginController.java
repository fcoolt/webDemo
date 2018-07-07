package web.demo.controller.system;

import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.demo.common.util.ResponseUtil;
import web.demo.common.vo.JsonDetail;
import web.demo.entity.RoleEntity;
import web.demo.entity.UserEntity;
import web.demo.service.RoleService;
import web.demo.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

/**
 * 用户Controller层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/system")
public class LoginController {

	Logger log = Logger.getLogger(this.getClass());

	/**
	 * 用户登录
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(UserEntity user,HttpServletRequest request){
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(user.getUserName(), user.getPassword());
		try{
			subject.login(token);
			Session session=subject.getSession();
			System.out.println("sessionId:"+session.getId());
			System.out.println("sessionHost:"+session.getHost());
			System.out.println("sessionTimeout:"+session.getTimeout());
			//session.setAttribute("info", "session的数据");
			return "redirect:/function/dataAnalysis.do";
		}catch(Exception e){
			//e.printStackTrace();
			request.setAttribute("user", user);
			String msg = "用户名或密码错误！";
			request.setAttribute("errorMsg", msg);
			System.out.println(msg);
			return "login";
		}
	}


}
