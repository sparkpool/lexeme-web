package com.lexeme.web.service.search.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.comparator.search.SearchComparator;
import com.lexeme.web.constants.DelimiterConstants;
import com.lexeme.web.domain.document.DocumentDB;
import com.lexeme.web.enums.EnumDocumentStatus;
import com.lexeme.web.pojo.document.DocumentTO;
import com.lexeme.web.service.search.ISearchService;
import com.lexeme.web.util.LexemeUtil;

@Service
public class SearchServiceImpl implements ISearchService{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Map<DocumentTO, Long> searchDocumentsByQuery(String query) {
		List<String> tokens = LexemeUtil.getListofStringDividedByDelimiter(query, DelimiterConstants.SPACE);
		return getDocumentsFromDB(tokens);
	}
	
	private Map<DocumentTO, Long> getDocumentsFromDB(List<String> tokens){
		if(tokens!=null && tokens.size() > 0){
			List<List<DocumentTO>> listOfDocuments = new ArrayList<List<DocumentTO>>();
		   for(String token : tokens){
			   List<DocumentTO> documents = getDocumentsFromDB(token);   
			   listOfDocuments.add(documents);
		   }
		   return getDocumentPojoFromDocumentsList(listOfDocuments);
		}
		return null;
	}
	
	private Map<DocumentTO, Long> getDocumentPojoFromDocumentsList(List<List<DocumentTO>> listOfDocuments){
		if(listOfDocuments!=null && listOfDocuments.size()>0){
			Map<DocumentTO, Long> documentsMap = new HashMap<DocumentTO, Long>();
			for(List<DocumentTO> list : listOfDocuments){
				if(list!=null && list.size() > 0){
					for(DocumentTO document : list){
						Long frequency = documentsMap.get(document);
						if(frequency!=null){
							documentsMap.put(document,frequency+1L);
						}else{
							documentsMap.put(document, 1L);
						}
					}
				}
			}
			return getDocumentInSortedOrder(documentsMap);
		}
		return null;
	}
	
	private Map<DocumentTO, Long> getDocumentInSortedOrder(Map<DocumentTO, Long> documentsMap){
		Map<DocumentTO, Long> documentsTreeMap = new TreeMap<DocumentTO, Long>(new SearchComparator(documentsMap));
		documentsTreeMap.putAll(documentsMap);
		return documentsTreeMap;
	}
	
	@SuppressWarnings("unchecked")
	private List<DocumentTO> getDocumentsFromDB(String keyword){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("GET.BYKEYWORDS");
		query.setParameter("keyword", "%" + keyword + "%");
		query.setParameter("status", EnumDocumentStatus.VERIFIED.getDocumentStatusId());
		List<DocumentDB> list = (List<DocumentDB>)query.list();
		return getDocumentFromDocumentDB(list);
	}
	
	private List<DocumentTO> getDocumentFromDocumentDB(List<DocumentDB> documentDB){
		List<DocumentTO> documents = new ArrayList<DocumentTO>();
		if(documentDB!=null && documentDB.size() > 0){
			for(DocumentDB document : documentDB){
				documents.add(new DocumentTO(document.getId(), document.getDisplayName(), document.getDescription(), document.getCategory()));
			}
		}
		return documents;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
