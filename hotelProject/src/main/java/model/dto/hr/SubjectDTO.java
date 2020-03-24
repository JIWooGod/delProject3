package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SubjectDTO implements Serializable {
	Long subjNo;
	String subjName;
	String subjCnt;
	Long subjGroup;
	Long subjDay;
	Long subjTime;
	String subjOrigin;
	String subjExtend;
	String subjStore;
	
	public String getSubjOrigin() {
		return subjOrigin;
	}
	public void setSubjOrigin(String subjOrigin) {
		this.subjOrigin = subjOrigin;
	}
	public String getSubjExtend() {
		return subjExtend;
	}
	public void setSubjExtend(String subjExtend) {
		this.subjExtend = subjExtend;
	}
	public String getSubjStore() {
		return subjStore;
	}
	public void setSubjStore(String subjStore) {
		this.subjStore = subjStore;
	}
	public Long getSubjNo() {
		return subjNo;
	}
	public void setSubjNo(Long subjNo) {
		this.subjNo = subjNo;
	}
	public String getSubjName() {
		return subjName;
	}
	public void setSubjName(String subjName) {
		this.subjName = subjName;
	}
	public String getSubjCnt() {
		return subjCnt;
	}
	public void setSubjCnt(String subjCnt) {
		this.subjCnt = subjCnt;
	}
	public Long getSubjGroup() {
		return subjGroup;
	}
	public void setSubjGroup(Long subjGroup) {
		this.subjGroup = subjGroup;
	}
	public Long getSubjDay() {
		return subjDay;
	}
	public void setSubjDay(Long subjDay) {
		this.subjDay = subjDay;
	}
	public Long getSubjTime() {
		return subjTime;
	}
	public void setSubjTime(Long subjTime) {
		this.subjTime = subjTime;
	}
}
