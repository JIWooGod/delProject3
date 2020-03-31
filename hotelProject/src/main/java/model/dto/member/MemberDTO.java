package model.dto.member;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class MemberDTO implements Serializable{
	String userId;
	String userPw;
	String userName;
	String userEmail;
	String userAddr;
	String userPh;
	Timestamp userRegist;
	String joinOk;
	String ipAddr;
	Long userNo;
	
	public MemberDTO() {
		
	}
	
	public MemberDTO(String userId, String userPw, String userName, String userEmail, String userAddr, String userPh,
			Timestamp userRegist, String joinOk, String ipAddr, Long userNo) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userPh = userPh;
		this.userRegist = userRegist;
		this.joinOk = joinOk;
		this.ipAddr = ipAddr;
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
	}
	public Timestamp getUserRegist() {
		return userRegist;
	}
	public void setUserRegist(Timestamp userRegist) {
		this.userRegist = userRegist;
	}
	public String getJoinOk() {
		return joinOk;
	}
	public void setJoinOk(String joinOk) {
		this.joinOk = joinOk;
	}
	public String getIpAddr() {
		return ipAddr;
	}
	public void setIpAddr(String ipAddr) {
		this.ipAddr = ipAddr;
	}
	public Long getUserNo() {
		return userNo;
	}
	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}
	
}
