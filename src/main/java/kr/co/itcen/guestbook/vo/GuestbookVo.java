package kr.co.itcen.guestbook.vo;

public class GuestbookVo {

	private Long no;
	private String name;
	private String password;
	private String contents;
	private String datetiem;

	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDatetiem() {
		return datetiem;
	}

	public void setDatetiem(String datetiem) {
		this.datetiem = datetiem;
	}

}
