package model.dto.member;

public class AuthInfo {
	private String id;
	private String email;
	private String name;
	private String pw;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public AuthInfo(String id, String email, String name, String pw) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.pw = pw;
	}
	
	
}
