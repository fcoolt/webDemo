package web.demo.controller.function;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/function")

public class DataAnalysisController {

    Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "/dataAnalysis")
    public String dataAnalysis(ModelMap modelMap, HttpServletRequest request) {
        return "pages/function/dataAnalysis";
    }
}
