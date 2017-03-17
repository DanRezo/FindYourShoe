package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sd.shoefinder.Shoe;
import com.sd.shoefinder.ShoeDAO;
import com.sd.shoefinder.ShoeFileDao;

@Controller
public class ShoeFinderController {

	@Autowired
	private ShoeDAO shoeDAO;

	@Autowired
	public void setshoeDAO(ShoeFileDao shoeFileDao) {
		this.shoeDAO = shoeFileDao;
	}

	@RequestMapping(path = "GetShoeData.do", 
					params = "name",
					method = RequestMethod.GET)
	public ModelAndView getByName(@RequestParam("name") String n) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		mv.addObject("shoe", shoeDAO.getShoesByName(n));

		return mv;
	}

	@RequestMapping(path = "GetShoeData.do",
					params = "brand",
					method = RequestMethod.GET)
	public ModelAndView getByBrand(@RequestParam("brand")String b){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		mv.addObject("shoe", shoeDAO.getShoesByBrand(b));

		return mv;
	}
	@RequestMapping(path = "GetShoeData.do",
			params = "type",
			method = RequestMethod.GET)
	public ModelAndView getByType(@RequestParam("type")String t){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		mv.addObject("shoe", shoeDAO.getShoesByType(t));
		
		return mv;
	}
	@RequestMapping(path = "GetShoeData.do",
			params = "run",
			method = RequestMethod.GET)
	public ModelAndView getByRun(@RequestParam("run")String r){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		mv.addObject("shoe", shoeDAO.getShoesByRun(r));
		
		return mv;
	}
	@RequestMapping( path = "NewShoe.do",
					 method = RequestMethod.POST)
	public ModelAndView newShoe(Shoe shoe){
		shoeDAO.addNewShoe(shoe);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		
		return mv;
		
	}
	@RequestMapping( path = "DeleteShoe.do",
					method = RequestMethod.POST)
	public ModelAndView deleteShoe(@RequestParam("name") String name){
		ModelAndView mv = new ModelAndView();
		shoeDAO.deleteShoe(name);
		mv.setViewName("result");
		
		return mv;
	}
	

}
