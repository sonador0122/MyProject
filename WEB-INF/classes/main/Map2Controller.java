package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.AnimalsDAO;
import dto.AnimalsDTO;

@Controller
public class Map2Controller {
	
	
	
	// ºÐÆ÷µµ ?
	@RequestMapping("/map2.do")
	public String map2(){
			return "animallist33";
		}
}
