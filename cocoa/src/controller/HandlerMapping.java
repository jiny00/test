package controller;

public class HandlerMapping {
	private static HandlerMapping instance = new HandlerMapping();

	private HandlerMapping() {
	}

	public static HandlerMapping getInstance() {
		return instance;
	}

	public Controller create(String command) {
		Controller c = null;
		//******공지 컨트롤러**********
		if(command.equals("")){
			c = new ListController();                       //공지사항 컨트롤러
		}else if(command.equals("")){
			c = new ShowContentController();         //공지사항 세부사항 컨트롤러
		}else if(command.equals("")){
			c = new BoardWriteController();          //관리자 공지사항 글쓰기 
		}else if(command.equals("")){
			c = new BoardUpdateController();        //공지사항 수정
			
		//*******멤버 컨트롤러**********
		}else if(command.equals("")){                   //로그인
			c = new LoginController();
		}else if(command.equals("")){                   //로그아웃
			c = new LogoutController();
		}else if(command.equals("")){                   //회원가입
			c = new RegisterController();
		}else if(command.equals("")){					  //회원수정
			c = new MemberUpdateController();
		}else if(command.equals("")){                   //회원탈퇴
			c = new DropMemberController();
			
		//**********찜 컨트롤러***********
		}else if(command.equals("")){                   //찜보내기
			c = new PokeInsertController();
		}else if(command.equals("")){					   //찜확인
			c = new PokeUpdateController();
		}
		return c;
	}
}
