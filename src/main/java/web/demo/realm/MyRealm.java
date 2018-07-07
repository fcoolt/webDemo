package web.demo.realm;

import javax.annotation.Resource;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import web.demo.entity.UserEntity;
import web.demo.service.UserService;

import java.util.Set;

public class MyRealm extends AuthorizingRealm{

	@Resource
	private UserService userService;

	/**
	 * 为当限前登录的用户授予角色和权限
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		UserEntity user = (UserEntity)principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		Set<String> r = userService.getRoles(user.getUserName());
		authorizationInfo.setRoles(r);
		Set<String> p = userService.getPermissions(user.getUserName());
		authorizationInfo.setStringPermissions(p);
		return authorizationInfo;
	}

	/**
	 * 验证当前登录的用户
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userName=(String)token.getPrincipal();
		UserEntity user = userService.getByUserName(userName);
		if(user != null){
			AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(user, user.getPassword(),"webdemoRealm");



			String hashAlgorithmName = "MD5";
			String credentials = user.getPassword();
			int hashIterations = 1024;
			Object obj = new SimpleHash(hashAlgorithmName, credentials, null, hashIterations);
			System.out.println(obj);
			return authcInfo;
		}else{
			return null;
		}
	}

}
