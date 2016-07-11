package main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AboutController {
	@RequestMapping("/about.do")
	public String showabout() {
		return "about";
	}
	@RequestMapping("aboutK.do")
	public String showaboutK(){
		return "aboutK";
	}
}
