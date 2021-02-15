function checkValue(){
	
	/* 변수 선언 */
	/* join에 설정한 id 값을 통하여 getElementById()를 이용해서 가져옴. */
	var pw = document.getElementById("pw");
	var pwcheck = document.getElementById("pwcheck");
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var addr = document.getElementById("addr");
	var birth = document.getElementById("birth");
	
	/* 졍규표현식 */
	var pwPattern =  /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{4,12}/;
	var namePattern = /[a-zA-Z가-힣]/;
	var birthPattern = /[0-9]{8}/;
	var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
	
	
	
	/* 비밀번호 입력여부 확인 */
	if(pw.value == ""){
		alert("비밀번호 확인해주세요.");
		
		pw.select();
		pw.focus();
		return;
	}
	
	/* 4~12자 영문 대 소문자, 숫자, 특수문자 외 입력할 경우 */
	if(!pwPattern.test(pw.value)){
		alert("비밀번호는 4~12자 영문 대 소문자, 숫자, 특수문자만 사용 가능합니다.");
		
		pw.select();
		pw.focus();
		return;
	}
	
	/* 비밀번호와 비밀번호 확인이 다를 경우 */
	if(pwcheck.value != pw.value){
		alert("비밀번호를 동일하게 입력해주세요.");
		
		pwcheck.select();
		pwcheck.focus();
		return;
	}
	
	/* 이름 입력여부 확인 */
	if(name.value == ""){
		alert("이름 확인해주세요.");
		
		name.select();
		name.focus();
		return;
	}
	
	/* 한글과 영문 대 소문자 외 입력할 경우 + 특수기호, 공백 사용할 경우 */
	if(!namePattern.test(name.value)){
		alert("한글과 영문 대 소문자만 사용 가능합니다. (특수기호, 공백 사용 불가)");
		
		name.select();
		name.focus();
		return;
	}
	
	/* 생년월일 입력여부 확인 */
	if(birth.value == ""){
		alert("생년월일을 확인해주세요");
		
		birth.select();
		birth.focus();
		return;
	}
	
	if(!birthPattern.test(birth.value)){
		alert("19960101과 같은 형태로 입력하세요!");
		
		birth.select();
		birth.focus();
		return;
	}
	
	
	/* 이메일 입력여부 확인 */
	if(email.value == ""){
		alert("이메일 확인해주세요.");
		
		email.select();
		email.focus();
		return;
	}
	
	/* 이메일 형식이 아닌 데이터 입력할 경우 */
	if(!emailPattern.test(email.value)){
		alert("형식에 맞지 않는 이메일입니다.");
		
		email.select();
		email.focus();
		return;
	}
	
	/* 주소 입력여부 확인 */
	if(addr.value == ""){
		alert("주소 확인해주세요");
		
		addr.select();
		addr.focus();
		return;
	}
	
	
	
	document.userInfo.submit();

}