package web.demo.controller.foundation;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/foundation")
public class questionManagementController {
    Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "/questionManagement")
    public String dealPlan(ModelMap modelMap, HttpServletRequest request) {
        return "/pages/foundation/questionManagement";
    }
}
