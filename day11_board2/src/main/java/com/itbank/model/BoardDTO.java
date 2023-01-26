package com.itbank.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//IDX        NOT NULL NUMBER         
//WRITER     NOT NULL VARCHAR2(100)  
//TITLE      NOT NULL VARCHAR2(100)  
//CONTENT    NOT NULL VARCHAR2(2000) 
//WRITEDATE           DATE           
//IPADDR     NOT NULL VARCHAR2(30)   
//VIEWCOUNT           NUMBER         
//UPLOADFILE          VARCHAR2(255) 
public class BoardDTO {

	private int idx;
	private String title;
	private String writer;
	private String content;
	private Date writedate;
	private String ipaddr;
	private int viewcount;
	private String uploadfile;
	private MultipartFile uploadfilefile;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public String getIpaddr() {
		return ipaddr;
	}

	public void setIpaddr(String ipaddr) {
		this.ipaddr = ipaddr;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public String getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(String uploadfile) {
		this.uploadfile = uploadfile;
	}

	public MultipartFile getUploadfilefile() {
		return uploadfilefile;
	}

	public void setUploadfilefile(MultipartFile uploadfilefile) {
		this.uploadfilefile = uploadfilefile;
	}


}
