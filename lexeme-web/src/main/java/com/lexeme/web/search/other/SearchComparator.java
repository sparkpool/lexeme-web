package com.lexeme.web.search.other;

import java.util.Comparator;
import java.util.Map;

import com.lexeme.web.pojo.document.DocumentTO;

public class SearchComparator implements Comparator<DocumentTO>{

	private Map<DocumentTO, Long> map;
	
	public SearchComparator(Map<DocumentTO, Long> map){
	  this.map = map;
	}
	
	@Override
	public int compare(DocumentTO o1, DocumentTO o2) {
		if(map.get(o2).compareTo(map.get(o1))==0){
			return 1;
		}
		return map.get(o2).compareTo(map.get(o1));
	}

}
