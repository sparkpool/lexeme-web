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
import javax.persistence.UniqueConstraint;

import com.sd.web.domain.user.User;

@Entity
@Table(name = "DOCUMENT_ANALYSIS", uniqueConstraints = @UniqueConstraint(columnNames = 
{"USER_ID", "DOC_ID"}))

public class DocumentAnalysis implements Serializable{

	private static final long serialVersionUID = -9108975543229108085L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "LIKES", nullable = false)
	private boolean likes;
	
	@Column(name = "VIEWS", nullable = false)
	private boolean views;
	
	@Column(name = "DOWNLOADS", nullable = false)
	private boolean downloads;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DOC_ID")
	private DocumentDB document;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID")
	private User user;
	
	@Column(name = "RATING")
	private Double rating;
	
	@Column(name = "COMMENT", length = 250)
	private String comment;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isLikes() {
		return likes;
	}

	public void setLikes(boolean likes) {
		this.likes = likes;
	}

	public boolean isViews() {
		return views;
	}

	public void setViews(boolean views) {
		this.views = views;
	}

	public boolean isDownloads() {
		return downloads;
	}

	public void setDownloads(boolean downloads) {
		this.downloads = downloads;
	}

	public DocumentDB getDocument() {
		return document;
	}

	public void setDocument(DocumentDB document) {
		this.document = document;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Double getRating() {
		return rating;
	}

	public void setRating(Double rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "DocumentAnalysis [id=" + id + ", likes=" + likes + ", views="
				+ views + ", downloads=" + downloads + ", document=" + document
				+ ", user=" + user + ", rating=" + rating + ", comment="
				+ comment + "]";
	}
}
