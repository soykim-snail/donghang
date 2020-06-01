package info.donghang.donghang;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "home";
	}
	
	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String content(Locale locale, Model model) {
				
				
		return "content";
	}
	
	@RequestMapping(value = "/analysis", method = RequestMethod.GET)
	public String analysis(Locale locale, Model model) {
				
				
		return "analysis";
	}
	
	@RequestMapping(value = "/data", method = RequestMethod.GET)
	public String dataAnal(Locale locale, Model model) {
							
		return "data";
	}
	
	@RequestMapping(value = "/restAPI", method = RequestMethod.GET)
	public String restAPI(Locale locale, Model model) {
							
		return "RestAPI";
	}
	
	/*
	 * @RequestMapping(value = "/data2", method = RequestMethod.GET) public String
	 * dataAnal2(Locale locale, Model model) {
	 * 
	 * return "data2"; }
	 * 
	 * @RequestMapping(value = "/content2", method = RequestMethod.GET) public
	 * String content2(Locale locale, Model model) {
	 * 
	 * return "content2"; }
	 * 
	 * @RequestMapping(value = "/data3", method = RequestMethod.GET) public String
	 * dataAnal3(Locale locale, Model model) {
	 * 
	 * return "data3"; }
	 */

}
