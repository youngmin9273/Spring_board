package org.hello.spring.domain;

import java.util.Date;

public class ReplyVO {
	
	private Integer r_no;
	private Integer b_no;
	private String replytext;
	private String replyer;
	private Date regdate;
	private Date updatedate;
	
	
	
	
	
	public ReplyVO() {
	}
	@Override
	public String toString() {
		return "ReplyVO [r_no=" + r_no + ", b_no=" + b_no + ", replytext=" + replytext + ", replyer=" + replyer
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	public Integer getR_no() {
		return r_no;
	}
	public void setR_no(Integer r_no) {
		this.r_no = r_no;
	}
	public Integer getB_no() {
		return b_no;
	}
	public void setB_no(Integer b_no) {
		this.b_no = b_no;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
}
