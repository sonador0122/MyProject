<%@page import="facebook4j.Facebook"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

pre{
	height:400px;

    padding:10px;
    overflow: auto;
    white-space: pre-wrap; /* pre tag내에 word wrap */
}    
body{
    background-image: "/proTemp/res/css/img/kiwi.jpg";
}

</style>
</head>
<body>
<div align="right" style="float:right;    margin-bottom: 50px; margin-right: 0">
	<img src="/Eden/res/img/menubar/sptBar01.png" width="80%" align="right" >
			</div>
<%Facebook facebook = (Facebook)session.getAttribute("facebook"); %>

	<form  name='thisForm' action="spt2.do" method="POST">
	<script language="javascript" src="/proTemp/res/js/viewTitle.js" type="text/javascript"></script>

		<center>
			<img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-square ">			
				<h3>지금까지 모인 모금액2</h3>
				
				<script type="text/javascript">
					var cnt = "<c:out value="${totalAmount}원"/>";
					showTitle("/proTemp/res/js/", "viewTitle.swf", 700, 30, cnt, "#", "center", "0x00000");
					</script>

		</center>
		
		
		<!-- content -->
		<div class="col-sm-12" id="featured">
			<div class="page-header text-muted">support guide</div>
		</div>
		<!--/top story-->
		<div class="row">
			<div class="col-sm-10">
				과정 안내 입니다. + 약관동의
				<pre>
('eden.com'이하 'EDEN')은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.

('EDEN') 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

○ 본 방침은부터 2014년 8월 1일부터 시행됩니다.

1. 개인정보의 처리 목적 ('eden.com'이하 'EDEN')은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.

가. 홈페이지 회원가입 및 관리ㅁ
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 각종 고지·통지, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다.

나. 재화 또는 서비스 제공
서비스 제공 등을 목적으로 개인정보를 처리합니다.

다. 마케팅 및 광고에의 활용
접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.



2. 개인정보 파일 현황
('eden.com'이하 'EDEN')가 개인정보 보호법 제32조에 따라 등록?공개하는 개인정보파일의 처리목적은 다음과 같습니다.

1. 개인정보 파일명 : eden
- 개인정보 항목 : 비밀번호, 생년월일, 로그인ID, 이름, 이메일, 은행계좌정보, 결제기록, 접속 IP 정보, 쿠키, 서비스 이용 기록, 접속 로그
- 수집방법 : 홈페이지
- 보유근거 : .
- 보유기간 : 1년
- 관련법령 : 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년


※ 기타('eden.com'이하 'EDEN')의 개인정보파일 등록사항 공개는 행정안전부 개인정보보호 종합지원 포털(www.privacy.go.kr) → 개인정보민원 → 개인정보열람등 요구 → 개인정보파일 목록검색 메뉴를 활용해주시기 바랍니다.

3. 개인정보처리 위탁

① ('EDEN')은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.

② ('eden.com'이하 'EDEN')은(는) 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적?관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리?감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.

③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.


4. 정보주체의 권리,의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.

① 정보주체는 edenProject(‘eden.com’이하 ‘EDEN) 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
1. 개인정보 열람요구
2. 오류 등이 있을 경우 정정 요구
3. 삭제요구
4. 처리정지 요구
② 제1항에 따른 권리 행사는edenProject(‘eden.com’이하 ‘EDEN) 에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 <기관/회사명>(‘사이트URL’이하 ‘사이트명) 은(는) 이에 대해 지체 없이 조치하겠습니다.
③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 <기관/회사명>(‘사이트URL’이하 ‘사이트명) 은(는) 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.


5. 처리하는 개인정보의 항목 작성 

① ('eden.com'이하 'EDEN')은(는) 다음의 개인정보 항목을 처리하고 있습니다.

1<홈페이지 회원가입 및 관리>
- 필수항목 : 비밀번호, 생년월일, 로그인ID, 이름, 이메일, 은행계좌정보, 결제기록, 접속 IP 정보, 쿠키, 서비스 이용 기록
- 선택항목 :



6. 개인정보의 파기('EDEN')은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

-파기절차
이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
-파기기한
이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
-파기방법
전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.


7. 개인정보의 안전성 확보 조치 ('EDEN')은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.

1. 개인정보 취급 직원의 최소화 및 교육
개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.

2. 정기적인 자체 감사 실시
개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.

3. 내부관리계획의 수립 및 시행
개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.

4. 개인정보의 암호화
이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.

5. 해킹 등에 대비한 기술적 대책
<edenProject>('EDEN')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.

6. 개인정보에 대한 접근 제한
개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.

7. 접속기록의 보관 및 위변조 방지
개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.



8. 개인정보 보호책임자 작성


① edenProject(‘eden.com’이하 ‘EDEN) 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.

▶ 개인정보 보호책임자 
성명 :김규리
직책 :김규리
직급 :팀장
연락처 :010-0000-0000, rbflrbfl@naver.com, 010-0000-0000
※ 개인정보 보호 담당부서로 연결됩니다.

② 정보주체께서는 edenProject(‘eden.com’이하 ‘EDEN) 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. edenProject(‘eden.com’이하 ‘EDEN) 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.


9. 개인정보 처리방침 변경

①이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
				
				</pre><br/>
				<h4 align="right">
				<small class="text-muted"><input type="radio" name="ok" required>동의 합니다.</small>
				<small class="text-muted"><input type="radio" name="ok">동의 하지 않습니다.</small>
			</h4>
				
				    			
				    <!-- 		3.세션값제거 <br/>
					<c:remove var="loginCode" scope="session" /><br/>  -->
								
				<br/>
			</div>
		</div>
		<div class="col-sm-12" id="stories">
			<div class="page-header text-muted divider">give financial support to</div>
		</div>
		<!--/stories-->
		<div class="row">
			<img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR" class="img-circle">



			<h4>
				<b>후원자 명 : <input type="text" name="Name" id="Name" placeholder="실명(입금자명)으로 작성" required></b>
				<!-- value = <'%'='"facebook.getMe().getName()" -->
			</h4>
			후원금액 : <input type="text" name="Amount" id="Amount" required size="15"> 원
			<p class="impTag_p">

				* 후원 유형 : <input type="radio" name="supportType" value="ST_short" required>1회 후원 / 
						   <input type="radio" name="supportType" value="ST_regular" required >정기 후원 <br /> 
				* 결제 유형 : <input
					type="radio" name="paymentType" value="PT_acntTf" required >실시간 계좌이체 / <input
					type="radio" name="paymentType" value="PT_deposit" required >무통장 입금 / <input
					type="radio" name="paymentType" value="PT_phnPM" required >휴대폰 결제  / <br /> 
					취소 시에 입금액을 환불받을 주문자 명의로 된 본인의 계좌를 입력해주세요<br /> <br /> 
				입금은행 : 
				<%! String blank[] = {"우리", "하나"}; %>
				<select name="bankName" id="bankName">
					<option selected="selected" value="bank_0">은행을 선택하세요</option>
					<option value="우리">우리은행</option>
					<option value="하나">하나은행</option>
					<option value="기업">기업은행</option>
				</select> 
				계좌번호 : <input type="text" name="accountNum"   placeholder="'-'을 포함하여 작성" required size="20"><br /> 
				이메일 : <input type="text" id="email" name="email" placeholder="반드시 현재 사용중인 주소로 작성해주세요 " required size="40">				
				<input type="hidden" value="입금" name="state">
				
				<br/>		<br/>		<br/>	
			
			
			</p>
			<h4></h4>
			<h4 align="right">
				<small class="text-muted">현재시간뿌리기</small>
			</h4>
		</div>

		<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
				<input type="submit" value="등록하기" onclick="formChck('')">
			</div>
		</div>

<br/>

<br/>

<br/>

<br/>
	</form>
</body>
</html>