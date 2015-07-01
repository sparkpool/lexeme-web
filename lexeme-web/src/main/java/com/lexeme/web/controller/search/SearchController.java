package com.lexeme.web.controller.search;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.pojo.document.DocumentTO;
import com.lexeme.web.service.search.ISearchService;

@Controller
public class SearchController {

	private static final Logger logger = Logger.getLogger(SearchController.class);
	
	@Autowired
	private ISearchService searchService;
	
	public ISearchService getSearchService() {
		return searchService;
	}

	@RequestMapping(value="/search", method = RequestMethod.GET)
	public ModelAndView getSearchResults(@RequestParam("q") String query){
		ModelAndView model = new ModelAndView();
		model.setViewName("library");
		model.addObject("divHide", true);
		try{
			if(StringUtils.isBlank(query) || query.length() < 3){
				return model;
			}
			Map<DocumentTO, Long> documents = getSearchService().searchDocumentsByQuery(query);
			model.addObject("documents", documents);
		}catch(Exception e){
			logger.error("Exception occured : " + e.getMessage());
		}
		return model;
	}

	
}
