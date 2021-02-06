function checkValue(){
	
	/* 변수 선언 */
	/* login에 설정한 id 값을 통하여 getElementById()를 이용해서 가져옴. */
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	
	/* 졍규표현식 */
	var idPattern = /[a-z0-9_-]{5,20}/; 
	var pwPattern =  /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{4,12}/;
	
	/* 아이디 입력여부 확인 */
	if(id.value == ""){
		alert("아이디 확인해주세요.");
		
		id.select();
		id.focus();
		return;
	}
	
	/* 5~20자의 영문 소문자, 숫자와 특수기호(_),(-) 외 입력할 경우 */
	if(!idPattern.test(id.value)){
		alert("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
		
		id.select();
		id.focus();
		return;
	}
	
	/* 비밀번호 입력여부 확인 */
	if(pw.value == ""){
		alert("비밀번호 확인해주세요.");
		
		pw.select();
		pw.focus();
		return;
	}
	
	/* 4~12자 영문 대 소문자, 숫자, 특수문자 외 입력할 경우 */
	if(!pwPattern.test(pw.value)){
		alert("4~12자 영문 대 소문자, 숫자, 특수문자만 사용 가능합니다.");
		
		pw.select();
		pw.focus();
		return;
	}
	
	document.loginInfo.submit();
	
}