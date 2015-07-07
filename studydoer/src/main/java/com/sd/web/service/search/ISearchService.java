package com.sd.web.service.search;

import java.util.Map;

import com.sd.web.pojo.document.DocumentTO;

public interface ISearchService {

	public Map<DocumentTO, Long> searchDocumentsByQuery(String query);
}
