package model;

public class PokeVO {
	private int pokeNo;
	private String seId;
	private String reId;
	private String confirm;
	public PokeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PokeVO(int pokeNo, String seId, String reId, String confirm) {
		super();
		this.pokeNo = pokeNo;
		this.seId = seId;
		this.reId = reId;
		this.confirm = confirm;
	}
	public int getPokeNo() {
		return pokeNo;
	}
	public void setPokeNo(int pokeNo) {
		this.pokeNo = pokeNo;
	}
	public String getSeId() {
		return seId;
	}
	public void setSeId(String seId) {
		this.seId = seId;
	}
	public String getReId() {
		return reId;
	}
	public void setReId(String reId) {
		this.reId = reId;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	@Override
	public String toString() {
		return "PokeVO [pokeNo=" + pokeNo + ", seId=" + seId + ", reId=" + reId
				+ ", confirm=" + confirm + "]";
	}
	
	
}
