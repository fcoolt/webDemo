package web.demo.controller.system;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/system")
public class systemLogController {

    Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "/systemLog")
    public String dealPlan(ModelMap modelMap, HttpServletRequest request) {
        return "/pages/system/systemLog";
    }
}
