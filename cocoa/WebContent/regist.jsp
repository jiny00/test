<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Model2 회원 가입 Architecture</title>
<!-- <script type="text/javascript">
    function checkId() {
      var id = document.registForm.id;
      if(id.value == ""){
    	  alert("아이디를 입력하세요!");
    	  return false;
      }
      open("DispatcherServlet?command=checkId&id="+id.value,"중복확인","width=200, height=200, top=150,left=200");
   } 
   
   function register() {
	var id = document.registForm.id;
 	var pass = document.registForm.pass;
	var cpass = document.registForm.checkPass;
	var name = document.registForm.name;
	var sex = document.registForm.sex;
	var day = document.registForm.day;
	var mail = document.registForm.mail;
	var addrNum = document.registForm.addrNum;
	var address = document.registForm.address;
 	 var hobby = document.registForm.hobby; 
	 var job = document.registForm.job;  
	 var hidden = document.registForm.data;
	 var temp = "";
	if(id.value == ""){
		alert("아이디를 입력하세요!!");
		id.focus();
		return false;
	}if(hidden.value == ""){
		alert("중복확인하세요!!");
		return false;		
	}if(pass.value == ""){
		alert("비밀번호를 입력하세요!!");
		pass.focus();
		return false;
	}if(cpass.value == ""){
		alert("비밀번호 확인란을 입력하세요!!");
		cpass.focus();
		return false;
	}if(pass.value != cpass.value){
		alert("비빌번호 확인란과 비빌번호가 다릅니다.");
		cpass.focus();
		return false;
	}if(name.value == ""){
		alert("이름을 입력하세요!!");
		name.focus();
		return false;
	}if(sex.value == ""){
		alert("성별을 체크하세요!!");
		return false;
	}if(day.value == ""){
		alert("생년월일을 입력하세요!!");
		day.focus();
		return false;
	}if(mail.value == ""){
		alert("메일을 입력하세요!!");
		mail.focus();
		return false;
	}if(addrNum.value == ""){
		alert("우변번호를 입력하세요!!");
		name.focus();
		return false;
	}if(address.value == ""){
		alert("주소를 입력하세요!!");
		address.focus();
		return false;
	}if(job.value == ""){
		alert("직업을 선택하세요!!");
		return false;
	}
	if(i.value!=hidden.value){
		alert("인증받은 아이디가 아닙니다!! 중복확인 하세요!");
		i.value="";		
		 return false;
	}
}

</script> -->
</head>
<body>
<form action="DispatcherServlet" method="post" name = "registForm" onsubmit="return register()">
<table border="1"cellpadding="5">
   <tr>
      <td bgcolor="yellow"  colspan="2" align="center"><h2>회원 가입</h2></td>
   </tr>
   <tr>
      <td>아이디</td>
      <td><input type="text"name="id">
      <input type="button"value="중복확인"onclick="return checkId()"></td>
   </tr>
   <tr>
      <td>패스워드</td>
      <td><input type="password"name="pass"></td>
   </tr>
   <tr>
      <td>패스워드 확인</td>
      <td><input type="password"name="checkPass"></td>
   </tr>
   <tr>
      <td>이름</td><td><input type="text" name="name"></td>
   </tr>
   <tr>
      <td>성별</td>
      <td>
      남<input type="radio"name="sex"value="male">
      여<input type="radio"name="sex"value="female"></td>
   </tr>
   <tr>
      <td>생년월일</td>
      <td><input type="text"name="day"size="10">ex)160330</td>
   </tr>
   <tr>
      <td>주소</td>
      <td>
<select name = "location">
	<option value = ""> --지역--</option>
	<option value = "1"> --서울--</option>
	<option value = "2"> --경기도--</option>
	<option value = "3"> --전라북도--</option>
	<option value = "4"> --전라남도--</option>
	<option value = "6"> --경상북도--</option>
	<option value = "7"> --충청남도--</option>
	<option value = "8"> --충청북도--</option>
	<option value = "9"> --강원도--</option>
</select>
      </td>
   </tr>
   <tr>
      <td>취미</td>
      <td>인터넷<input type ="checkbox"name="hobby"value="인터넷">
      여행<input type ="checkbox"name="hobby"value="여행">
      게임<input type ="checkbox"name="hobby"value="게임">
      영화<input type ="checkbox"name="hobby"value="영화">
      운동<input type ="checkbox"name="hobby"value="운동"></td>
   </tr>
      <tr>
      <td>키</td>
	 <td>
	 	<select name = "height">
	<option value = ""> --키--</option>
	<option value = "1"> 145~150</option>
	<option value = "2"> 150~155</option>
	<option value = "3"> 155~160</option>
	<option value = "4"> 160~165</option>
	<option value = "5"> 165~170</option>
	<option value = "6"> 170~175</option>
	<option value = "7"> 175~180</option>
	<option value = "8"> 180~185</option>
	<option value = "9"> 185~</option>
</select>
	 </td>
   </tr>
   <tr>
      <td>직업</td>
      <td>
      <input type = "text" name = "job">
      </td>
   </tr>
   
     <tr>
      <td>카톡아이디</td>
      <td>
      <input type = "text" name = "job">
      </td>
   </tr>
   
    <tr>
      <td>MBTI</td>
      <td>
      	 	<select name = "mbti">
			<option value = ""> --MBTI--</option>
			<option value = "1"> ISTJ </option>
			<option value = "2"> ISFJ</option>
			<option value = "3"> INFJ</option>
			<option value = "4"> INTJ</option>
			<option value = "5"> ISTP </option>
			<option value = "6"> ISFP</option>
			<option value = "7"> INFP</option>
			<option value = "8"> INTP</option>
			<option value = "9"> ESTP</option>
			<option value = "10"> ESFP</option>
			<option value = "11"> ENFP</option>
			<option value = "12"> ENTP</option>
			<option value = "13"> ESTJ</option>
			<option value = "14"> ESFJ</option>
			<option value = "15"> ENFJ~</option>
			<option value = "16"> ENTJ</option>
</select>
      </td>
   </tr>
   
   <tr>
       <td colspan="2"align="center">
          <input type="submit" value="회원가입">
          <input type="button"value="다시쓰기"onclick="reset()">
          <input type="button"value="로그인"onclick="login()">
          <input type = "hidden" name = "command" value = "regist">
          <input type = "hidden" name = "data" value = "">
       </td>
    </tr>
</table>
</form>
</body>
</html>