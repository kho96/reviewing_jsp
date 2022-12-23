package prac04.action_tag;

public class UserVo {
	/*
	 *  자바빈 형식 - 필드의 접근 제한자는 private
	 *  		   각 필드의 getter/setter가 존재하고
	 *  		   getter, setter의 메서드 이름에서 필드명의 앞글자는 대문자
	 *  		   반드시 기본생성자(인자없는)를 가진다.
	 */
	
	private String userid;
	private String username;
	private String userpw;
	private String userphoneNum;

	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVo(String userid, String username, String userpw, String userphoneNum) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpw = userpw;
		this.userphoneNum = userphoneNum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUserphoneNum() {
		return userphoneNum;
	}

	public void setUserphoneNum(String userphoneNum) {
		this.userphoneNum = userphoneNum;
	}

	@Override
	public String toString() {
		return "UserVo [userid=" + userid + ", username=" + username + ", userpw=" + userpw + ", userphoneNum="
				+ userphoneNum + "]";
	}

}
