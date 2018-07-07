package web.demo.controller.system.permission;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import flexjson.JSONSerializer;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import web.demo.entity.*;
import web.demo.service.*;

import java.util.List;

import com.github.pagehelper.PageInfo;

/**
 * 用户Controller层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/system/permission")
public class ResourceController {
    Logger log = Logger.getLogger(this.getClass());

    @Resource
    private ResourceService resourceService;

    /**
     * 功能菜单主页面
     *
     * @return
     */
    @RequestMapping(value = "/resource_list")
    public String ResourceList() {
        return "pages/system/permission/resource_list";
    }

    /**
     * 功能菜单左边页面
     *
     * @return
     */
    @RequestMapping(value = "/resource_list_left")
    public String ResourceListLeft(ModelMap model, HttpServletRequest request) throws Exception {

        List<TreeEntity> tree = resourceService.getAllResourceTree();

        String strJson =  new  JSONSerializer().deepSerialize(tree);

        model.addAttribute("resourceListTree",strJson);

        return "pages/system/permission/resource_list_left";
    }

    /**
     * 用户列表
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/resource_list_right")
    public String ResourceListRight(ModelMap model, HttpServletRequest request) throws Exception {
        //每页最大显示行数
        int MaxPageSize = 10;
        int offset = 0;
        try{
            offset = Integer.parseInt(request.getParameter("pager.offset"));
        }catch (Exception e){}

        int pageNo = offset/MaxPageSize + 1;

        PageInfo<ResourceEntity> page;
        String fid = request.getParameter("fid");
        if(fid=="" || fid==null) {
            page = resourceService.queryAllByPage(pageNo,MaxPageSize); fid="";
        }
        else {
            page = resourceService.queryIdByPage(pageNo,MaxPageSize,Integer.parseInt(fid));
        }

        model.addAttribute("resourceList", page.getList());
        model.addAttribute("total", page.getTotal());
        model.addAttribute("StartRow", page.getStartRow());
        model.addAttribute("PageSize", page.getPageSize());
        model.addAttribute("fid",fid);
        model.addAttribute("url", "system/permission/resource_list_right.do");

        return "pages/system/permission/resource_list_right";
    }

    /**
     * 资源选择树
     *
     * @return
     */
    @RequestMapping(value = "/resource_tree")
    public String ResourceTree(ModelMap model, HttpServletRequest request) throws Exception {

        List<TreeEntity> tree = resourceService.getAllResourceTree();

        String strJson =  new  JSONSerializer().deepSerialize(tree);

        model.addAttribute("resourceTree",strJson);

        return "pages/system/permission/resource_tree";
    }
}


