package teamproject5.a01_Haeun.VO;
// teamproject5.a01_Haeun.VO.Member

import java.util.Date;
public class Member {
	private String id;
	private String pw;
	private String name;
	private String phoneNum;
	private String birth;
	private String email;
	public Member() {
		// TODO Auto-generated constructor stub
	}
	public Member(String id, String pw, String name, String phoneNum, String birth, String email) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phoneNum = phoneNum;
		this.birth = birth;
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
	
}
