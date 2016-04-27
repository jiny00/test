package model;

public class MemberVO {
	private String id;
	private String password;
	private String gender;
	private int age;
	private String location;
	private String job;
	private int heigth;
	private String hobby;
	private String admin;
	private String picture;
	private String mbti;
	private String kakao;
	
	public MemberVO(String id, String password, String gender, int age,
			String location, String job, int heigth, String hobby,
			String admin, String picture, String mbti, String kakao) {
		super();
		this.id = id;
		this.password = password;
		this.gender = gender;
		this.age = age;
		this.location = location;
		this.job = job;
		this.heigth = heigth;
		this.hobby = hobby;
		this.admin = admin;
		this.picture = picture;
		this.mbti = mbti;
		this.kakao = kakao;
	}

	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getHeigth() {
		return heigth;
	}

	public void setHeigth(int heigth) {
		this.heigth = heigth;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getKakao() {
		return kakao;
	}

	public void setKakao(String kakao) {
		this.kakao = kakao;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", gender="
				+ gender + ", age=" + age + ", location=" + location + ", job="
				+ job + ", heigth=" + heigth + ", hobby=" + hobby + ", admin="
				+ admin + ", picture=" + picture + ", mbti=" + mbti
				+ ", kakao=" + kakao + "]";
	}
	
	
}
