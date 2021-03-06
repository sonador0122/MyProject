package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.AnimalsDAO;
import dto.AnimalsDTO;
import dto.TestDTO;

@Controller
public class AnimalsController {
	@Autowired
	@Qualifier("animalsdao")
	AnimalsDAO dao;
	
	
	@RequestMapping("/animals_list.do")
	public ModelAndView ormlist(HttpServletRequest request,
			@RequestParam("ISO_Codes") String ISO_Codes) {
		ModelAndView mav = new ModelAndView();
		List<AnimalsDTO> animalsList = null;
		if(ISO_Codes==null){
			
		}else{
			animalsList=dao.getAnimalsList(ISO_Codes);
		}
		
		System.out.println("Ibatis ORM :" + animalsList.size());
		
		mav.addObject("animalsList", animalsList);
		mav.setViewName("map");
		return mav;
	}
 
	
	@RequestMapping("/birds.do")
	public ModelAndView ormlist2(HttpServletRequest request,
			@RequestParam("Class_names") String Class_names) {
		ModelAndView mav = new ModelAndView();
		List<AnimalsDTO> animalsList2 = null;
		if(Class_names==null){
			
		}else{
			animalsList2=dao.getAnimalsList2(Class_names);
		}
		
		System.out.println("Ibatis ORM ���� �׽�Ʈ:" + animalsList2.size());
	
		mav.addObject("animalsList2", animalsList2);
		mav.setViewName("animallist33");
		return mav;
	}	
// 
	@RequestMapping("/where.do")
	public ModelAndView ormlist3(HttpServletRequest request,
			@RequestParam("ISO_Codes") String ISO_Codes ,
			@RequestParam("Common_names") String Common_names)
	{
		
		ModelAndView mav = new ModelAndView();
		List<AnimalsDTO> animalsList3 = null;
		String[] ISO = ISO_Codes.split(",");
		
	
		animalsList3=dao.getAnimalsList3(ISO_Codes);
		
		System.out.println("Ibatis ORM ���� �׽�Ʈ:" + animalsList3.size());
		
		for (int i = 0; i < ISO.length; i++) {
			System.out.println(ISO[i]);
		}
		System.out.println(ISO.length);
		System.out.println("���� ���ڵ�"+ISO[0]);
		
		AnimalsDTO animal = dao.getAnimalsList4(Common_names); 
		System.out.println("Common_name ======="+ Common_names);
		mav.addObject("ISO", ISO);
		mav.addObject("animal", animal);
		mav.setViewName("map2");
		return mav;
	}	

	
	
}
