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
			c = new BoardWriteController();          //
		}else if(command.equals("")){
			c = new BoardUpdateController();
			
		//*******멤버 컨트롤러**********
		}else if(command.equals("")){
			c = new LoginController();
		}else if(command.equals("")){
			c = new LogoutController();
		}else if(command.equals("")){
			c = new RegisterController();
		}else if(command.equals("")){
			c = new MemberUpdateController();
		}else if(command.equals("")){
			c = new DropMemberController();
			
		//**********찜 컨트롤러***********
		}else if(command.equals("")){
			c = new PokeInsertController();
		}else if(command.equals("")){
			c = new PokeUpdateController();
		}
		return c;
	}
}
