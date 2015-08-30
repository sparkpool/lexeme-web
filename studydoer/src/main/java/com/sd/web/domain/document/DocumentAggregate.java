package com.sd.web.domain.document;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "DOCUMENT_AGGREGATE")

public class DocumentAggregate implements Serializable{

	private static final long serialVersionUID = 3882968974241508899L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DOC_ID")
	private DocumentDB document;
	
	@Column(name = "LIKES", nullable = false)
	private Long likes = 0L;
	
	@Column(name = "VIEWS", nullable = false)
	private Long views = 0L;
	
	@Column(name = "DOWNLOADS", nullable = false)
	private Long downloads = 0L;
	
	@Column(name = "AVG_RATING", nullable = false)
	private Double avgRating = 0.0D;
	
	@Column(name = "TOT_RATING", nullable = false)
	private Long totalRating = 0L;
	
	@Column(name = "TOT_USER_RATING", nullable = false)
	private Long totUserRated = 0L;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public DocumentDB getDocument() {
		return document;
	}

	public void setDocument(DocumentDB document) {
		this.document = document;
	}

	public Long getLikes() {
		return likes;
	}

	public void setLikes(Long likes) {
		this.likes = likes;
	}

	public Long getViews() {
		return views;
	}

	public void setViews(Long views) {
		this.views = views;
	}

	public Long getDownloads() {
		return downloads;
	}

	public void setDownloads(Long downloads) {
		this.downloads = downloads;
	}

	public Double getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(Double avgRating) {
		this.avgRating = avgRating;
	}

	public Long getTotalRating() {
		return totalRating;
	}

	public void setTotalRating(Long totalRating) {
		this.totalRating = totalRating;
	}

	public Long getTotUserRated() {
		return totUserRated;
	}

	public void setTotUserRated(Long totUserRated) {
		this.totUserRated = totUserRated;
	}

	@Override
	public String toString() {
		return "DocumentAggregate [id=" + id + ", document=" + document
				+ ", likes=" + likes + ", views=" + views + ", downloads="
				+ downloads + ", avgRating=" + avgRating + ", totalRating="
				+ totalRating + ", totUserRated=" + totUserRated + "]";
	}
	
}
