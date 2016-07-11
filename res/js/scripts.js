/*******************************************************************************
 * 
 * USER JS
 * 
 ******************************************************************************/

function mySubmit(str) {
	document.thisForm.action = str;
	document.thisForm.submit();
}// btnSubmit : onclick="mySubmit('서블릿명.do'), 모든 formTag name='thisForm'

function formChck(src) {
	var languageCheck = /\D/;
	var numCheck = /\d/;
	var charCheck = /\\|\^|\&|\||\$|\*|\+|\-|\?|\.|\,|\(|\)|\{|\}|\[|\]|\;|\@|\%|\0|\s/;
	var emailCheck = /@|\./;
	
	var ckStr = $('#Name').val();
	if (ckStr.length >= 20||ckStr.length < 2){		
		alertText(101);		
		$('#Name').val("");
	} else {
		ckStr = $('#Amount').val();
		if (languageCheck.test(ckStr)||!numCheck.test(ckStr)||charCheck.test(ckStr)) {		
			alertText(110);
			$('#Amount').val("");
		}else {
			if (ckStr < 1000) {					
				alertText(111);
				$('#Amount').val("1000" * 1);
			}else if (ckStr > 10000000) { 		
				alertText(112);
				$('#Amount').val("1000" * 1);
			}else {				
				ckStr = $('#bankName').val();
				if (ckStr == 'bank_0') {		
					alertText(120);
					$('#bankName').val(['bank_1']);
				} else {
					ckStr = $('#email').val();
					//alert(emailCheck.test(ckStr));
					if (!emailCheck.test(ckStr)){	
						alertText(130);
						$('#email').val("");
					}
				}
			}
		}
	}
}

function alertText(index) {
	switch (index) {
	//100~199 문자열 유효성 err
	  case 101   : alert("이름이 너무 길거나 짧습니다. 다시 입력하세요");
	               break;
	  case 110   : alert("후원금액 항목에 문자가 포함되어 있습니다.");
	               break;
	  case 111   : alert("금액이 너무 적습니다. 후원금 최소 단위는 1000원 입니다.");
      				break;
	  case 112   : alert("금액이 너무 큽니다. 후원금 최대 단위는 1000000원 입니다.");
	  				break;
	  case 120   : alert("은행을 선택하지 않으셨습니다.");
      				break;
	  case 130   : alert("옳바른 e-mail 주소가 아닙니다.");
	  				break;
	  default    : alert("alertText_INDEX의 숫자가 유효하지 않습니다.");
	               break;
	}
	
	
}
