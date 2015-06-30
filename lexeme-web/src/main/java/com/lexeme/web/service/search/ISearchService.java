package com.lexeme.web.service.search;

import java.util.Map;

import com.lexeme.web.pojo.document.DocumentTO;

public interface ISearchService {

	public Map<DocumentTO, Long> searchDocumentsByQuery(String query);
}
