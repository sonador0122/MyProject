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
<link rel="stylesheet" type="text/css" charset="utf-8" href="g.css" />
<link rel="shortcut icon" href="favicon.ico" />
<meta name="verify-v1"
	content="BBkjRefRXlA3Tf6oGjfzboK8pfgijneuUKOlkodlLuU=" />
<link rel="alternate" type="application/rss+xml" title="RSS"
	href="news.rss" />
<link rel="canonical"
	href="http://www.goat1000.com/tagcanvas-weighted.php" />
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7839831-1']);
_gaq.push(['_trackPageview']);
_gaq.push(['_trackPageLoadTime']);

(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
<style type="text/css">
<!-- /**
 * GeSHi (C) 2004 - 2007 Nigel McNie, 2007 - 2008 Benny Baumann
 * (http://qbnz.com/highlighter/ and http://geshi.org/)
 */
.javascript {
	font-family: 'Andale Mono', Consolas, monospace;
	font-size: 11px
}

.javascript .imp {
	font-weight: bold;
	color: red;
}

.javascript .kw1 {
	color: #000066;
	font-weight: bold;
}

.javascript .kw2 {
	color: #003366;
	font-weight: bold;
}

.javascript .kw3 {
	color: #000066;
}

.javascript .kw5 {
	color: #FF0000;
}

.javascript .co1 {
	color: #006600;
	font-style: italic;
}

.javascript .co2 {
	color: #009966;
	font-style: italic;
}

.javascript .coMULTI {
	color: #006600;
	font-style: italic;
}

.javascript .es0 {
	color: #000099;
	font-weight: bold;
}

.javascript .br0 {
	color: #009900;
}

.javascript .sy0 {
	color: #339933;
}

.javascript .st0 {
	color: #3366CC;
}

.javascript .nu0 {
	color: #CC0000;
}

.javascript .me1 {
	color: #660066;
}

.javascript span.xtra {
	display: block;
}

p.weighty {
	width: 310px;
	padding: 1em 20px;
	float: left;
	background-color: #fff;
	border: 4px solid #aaa;
	border-radius: 20px;
	-moz-border-radius: 20px;
}

ul.weighted {
	float: left;
	display: block;
	width: 280px;
	overflow: auto;
	padding: 20px;
	margin: 0 10px 20px 0;
	background-color: #fff;
	border: 4px solid #aaa;
	border-radius: 20px;
	-moz-border-radius: 20px;
	visibility: hidden;
}

ul.weighted li {
	display: inline;
}

ul.weighted li a {
	margin: 2px;
}

canvas.example {
	border: 1px solid #000;
	margin: 2px 20px
}

canvas#gradient {
	float: right
}
-->
</style>
<!--[if lt IE 9]><![endif]-->
<script type="text/javascript" src="/Eden/common/js/excanvas.min.js"></script>
<script src="/Eden/common/js/tagcanvas.min.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
window.onload = function() {
	TagCanvas.interval = 20;
	TagCanvas.textFont = 'HY��������M';
	TagCanvas.textColour = '#00f';
	TagCanvas.textHeight = 25;
	TagCanvas.outlineColour = '#f96';
	TagCanvas.outlineThickness = 5;
	TagCanvas.maxSpeed = 0.04;
	TagCanvas.minBrightness = 0.1;
	TagCanvas.depth = 0.92;
	TagCanvas.pulsateTo = 0.2;
	TagCanvas.pulsateTime = 0.75;
	TagCanvas.initial = [0.1,-0.1];
	TagCanvas.decel = 0.98;
	TagCanvas.reverse = true;
	TagCanvas.hideTags = false;
	TagCanvas.shadow = '#ccf';
	TagCanvas.shadowBlur = 3;
	TagCanvas.weight = true;
	TagCanvas.weightFrom = 'data-weight';
  TagCanvas.fadeIn = 800;
	try {
		TagCanvas.Start('tagcanvas','weightTags',wOpts.colour);
	} catch(e) {
	}
	var i, j, g, gc = document.getElementById('gradient').getContext('2d');
	g = gc.createLinearGradient(0, 0, 0, gc.canvas.height);
	for(i in TagCanvas.weightGradient)
		g.addColorStop(i, TagCanvas.weightGradient[i]);
	gc.fillStyle = g;
	gc.fillRect(0,0,gc.canvas.width,gc.canvas.height);
  for(i = 0; i < gexamples.length; ++i) {
    gc = document.getElementById('example' + i).getContext('2d');
    g = gc.createLinearGradient(0, 0, gc.canvas.width, 0);
    for(j in gexamples[i])
      g.addColorStop(j, gexamples[i][j]);
    gc.fillStyle = g;
    gc.fillRect(0, 0, gc.canvas.width, gc.canvas.height);
  }
};
var g1 = {
 0:   'red',
 0.5: 'orange',
 1:   'rgba(0,0,0,0.1)',
}, wOpts = {
  none: { weight: false },
  size: null,
  colour: { weightMode: 'colour' },
  both: { weightMode: 'both' },
  bgcolour: { weightMode: 'bgcolour', padding: 2, bgRadius: 5 },
  bgoutline: { weightMode:'bgoutline', bgOutlineThickness: 3, padding: 2, bgRadius: 5}
}, gexamples = [];
//]]>
</script>
</head>
<body>

	<form  name='thisForm' action="spt2.do" method="POST">
		<script language="javascript" src="/Eden/res/js/viewTitle.js"
			type="text/javascript"></script>

		<center>
			<!-- <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaNYLNXv4bLoeAaR74ZCCy_VWHPM8U2IjEE95o4rnpjxoXyMSR"
				class="img-square ">	 -->
			<h3>���ݱ��� ���� ��ݾ�</h3>

			<script type="text/javascript">
				var cnt = "<c:out value="${totalAmount}��"/>";
				showTitle("/Eden/res/js/", "viewTitle.swf", 700, 30, cnt, "#",
						"center", "0x00000");
			</script>
			
		</center>
		<div class="tagbox">
			<div class="centred">
			
			<div class="page-header text-muted">Donators</div>
			
				<ul class="weighted" style="font-size: 60%" id="weightTags">
					<c:forEach var="name" items="${namelist }">
						<li><a href="#" data-weight="<%=(Math.random() * 60) + 10%>"
							style="font-size: 5.83ex"><c:out value="${name }" /> </a></li>
					</c:forEach>
				</ul>
				<canvas id="tagcanvas" width="450" height="400"
					style="float: left; margin-bottom: 10px"></canvas>

			</div>
			<div id="htags" style="display: none;">
				<tags> <s_random_tags> <a href="#" class="#">test</a>
				</s_random_tags> <a href="/"></a></tags>
			</div>

			<script type="text/javascript" src="/Eden/res/js/swfobject.js"></script>
			<script type="text/javascript">
					var t = new SWFObject("/Eden/res/js/tagcloud.swf",
							"tagcloud", "100%", "180", "9", "#48464b");
					t.addVariable("tcolor", "0xF29661");
					t.addVariable("hicolor", "0x1DDB16");
					t.addVariable("tcolor2", "0xFF0000");
					t.addVariable("mode", "tags");
					t.addVariable("distr", "true");
					t.addVariable("tspeed", "100");
					t.addParam("allowScriptAccess", "always");
					t.addVariable("tagcloud",
							document.getElementById('htags').innerHTML.replace(
									/class=([\w]+)/gi, 'class="$1"').replace(
									/\"\"/gi, '"').replace(/class=\"/gi,
									'style=\"font-size:').replace(
									/:cloud([\d])/gi, ':1$1pt;').replace(
									/TAGS\>/gi, 'tags>').replace(/\<A\s/gi,
									'<a ').replace(/\<\/A\>/gi, '</a>')
									.replace(/\"/g, "'"));
					t.write("TiCumulus");
				</script>
		</div>
		
			<!-- content -->
		<div class="col-sm-12" id="featured">
			<div class="page-header text-muted">support guide</div>
		</div>
		<!--/top story-->
		<div class="row">
			<div class="col-sm-10">
				���� �ȳ� �Դϴ�. + �������
				<pre>
('eden.com'���� 'EDEN')��(��) ����������ȣ���� ���� �̿����� �������� ��ȣ �� ������ ��ȣ�ϰ� ���������� ������ �̿����� ������ ��Ȱ�ϰ� ó���� �� �ֵ��� ������ ���� ó����ħ�� �ΰ� �ֽ��ϴ�.

('EDEN') ��(��) ȸ��� ��������ó����ħ�� �����ϴ� ��� ������Ʈ ��������(�Ǵ� ��������)�� ���Ͽ� ������ ���Դϴ�.

�� �� ��ħ������ 2014�� 8�� 1�Ϻ��� ����˴ϴ�.

1. ���������� ó�� ���� ('eden.com'���� 'EDEN')��(��) ���������� ������ ������ ���� ó���մϴ�. ó���� ���������� ������ �����̿��� �뵵�δ� ������ ������ �̿� ������ ����� �ÿ��� �������Ǹ� ���� �����Դϴ�.

��. Ȩ������ ȸ������ �� ������
ȸ�� �����ǻ� Ȯ��, ȸ���� ���� ������ ���� ���� �ĺ�������, ȸ���ڰ� ����������, ������ ����Ȯ���� ���࿡ ���� ����Ȯ��, ���� �����̿� ����, ���� ����������, ���� ������ ���� ��� ���� ���� �������� ���������� ó���մϴ�.

��. ��ȭ �Ǵ� ���� ����
���� ���� ���� �������� ���������� ó���մϴ�.

��. ������ �� ������ Ȱ��
���Ӻ� �ľ� �Ǵ� ȸ���� ���� �̿뿡 ���� ��� ���� �������� ���������� ó���մϴ�.



2. �������� ���� ��Ȳ
('eden.com'���� 'EDEN')�� �������� ��ȣ�� ��32���� ���� ���?�����ϴ� �������������� ó�������� ������ �����ϴ�.

1. �������� ���ϸ� : eden
- �������� �׸� : ��й�ȣ, �������, �α���ID, �̸�, �̸���, �����������, �������, ���� IP ����, ��Ű, ���� �̿� ���, ���� �α�
- ������� : Ȩ������
- �����ٰ� : .
- �����Ⱓ : 1��
- ���ù��� : �ſ������� ����/ó�� �� �̿� � ���� ��� : 3��


�� ��Ÿ('eden.com'���� 'EDEN')�� ������������ ��ϻ��� ������ ���������� ����������ȣ �������� ����(www.privacy.go.kr) �� ���������ο� �� �������������� �䱸 �� ������������ ��ϰ˻� �޴��� Ȱ�����ֽñ� �ٶ��ϴ�.

3. ��������ó�� ��Ź

�� ('EDEN')��(��) ��Ȱ�� �������� ����ó���� ���Ͽ� ������ ���� �������� ó�������� ��Ź�ϰ� �ֽ��ϴ�.

�� ('eden.com'���� 'EDEN')��(��) ��Ź��� ü��� �������� ��ȣ�� ��25���� ���� ��Ź���� ������� �� �������� ó������, �����?������ ��ȣ��ġ, ����Ź ����, ��Ź�ڿ� ���� ����?����, ���ع�� �� å�ӿ� ���� ������ ��༭ �� ������ ����ϰ�, ��Ź�ڰ� ���������� �����ϰ� ó���ϴ����� �����ϰ� �ֽ��ϴ�.

�� ��Ź������ �����̳� ��Ź�ڰ� ����� ��쿡�� ��ü���� �� �������� ó����ħ�� ���Ͽ� �����ϵ��� �ϰڽ��ϴ�.


4. ������ü�� �Ǹ�,�ǹ� �� �� ����� �̿��ڴ� ����������ü�μ� ������ ���� �Ǹ��� ����� �� �ֽ��ϴ�.

�� ������ü�� edenProject(��eden.com������ ��EDEN) �� ���� �������� ���� �� ȣ�� �������� ��ȣ ���� �Ǹ��� ����� �� �ֽ��ϴ�.
1. �������� �����䱸
2. ���� ���� ���� ��� ���� �䱸
3. �����䱸
4. ó������ �䱸
�� ��1�׿� ���� �Ǹ� ����edenProject(��eden.com������ ��EDEN) �� ���� �������� ��ȣ�� �����Ģ ���� ��8ȣ ���Ŀ� ���� ����, ���ڿ���, �������(FAX) ���� ���Ͽ� �Ͻ� �� ������ <���/ȸ���>(������ƮURL������ ������Ʈ��) ��(��) �̿� ���� ��ü ���� ��ġ�ϰڽ��ϴ�.
�� ������ü�� ���������� ���� � ���� ���� �Ǵ� ������ �䱸�� ��쿡�� <���/ȸ���>(������ƮURL������ ������Ʈ��) ��(��) ���� �Ǵ� ������ �Ϸ��� ������ ���� ���������� �̿��ϰų� �������� �ʽ��ϴ�.
�� ��1�׿� ���� �Ǹ� ���� ������ü�� �����븮���̳� ������ ���� �� �� �븮���� ���Ͽ� �Ͻ� �� �ֽ��ϴ�. �� ��� �������� ��ȣ�� �����Ģ ���� ��11ȣ ���Ŀ� ���� �������� �����ϼž� �մϴ�.


5. ó���ϴ� ���������� �׸� �ۼ� 

�� ('eden.com'���� 'EDEN')��(��) ������ �������� �׸��� ó���ϰ� �ֽ��ϴ�.

1<Ȩ������ ȸ������ �� ����>
- �ʼ��׸� : ��й�ȣ, �������, �α���ID, �̸�, �̸���, �����������, �������, ���� IP ����, ��Ű, ���� �̿� ���
- �����׸� :



6. ���������� �ı�('EDEN')��(��) ��Ģ������ �������� ó�������� �޼��� ��쿡�� ��ü���� �ش� ���������� �ı��մϴ�. �ı��� ����, ���� �� ����� ������ �����ϴ�.

-�ı�����
�̿��ڰ� �Է��� ������ ���� �޼� �� ������ DB�� �Ű���(������ ��� ������ ����) ���� ��ħ �� ��Ÿ ���� ���ɿ� ���� �����Ⱓ ����� �� Ȥ�� ��� �ı�˴ϴ�. �� ��, DB�� �Ű��� ���������� ������ ���� ��찡 �ƴϰ��� �ٸ� �������� �̿���� �ʽ��ϴ�.
-�ı����
�̿����� ���������� ���������� �����Ⱓ�� ����� ��쿡�� �����Ⱓ�� �����Ϸκ��� 5�� �̳���, ���������� ó�� ���� �޼�, �ش� ������ ����, ����� ���� �� �� ���������� ���ʿ��ϰ� �Ǿ��� ������ ���������� ó���� ���ʿ��� ������ �����Ǵ� ���κ��� 5�� �̳��� �� ���������� �ı��մϴ�.
-�ı���
������ ���� ������ ������ ����� ����� �� ���� ����� ����� ����մϴ�.


7. ���������� ������ Ȯ�� ��ġ ('EDEN')��(��) ����������ȣ�� ��29���� ���� ������ ���� ������ Ȯ���� �ʿ��� �����/������ �� ������ ��ġ�� �ϰ� �ֽ��ϴ�.

1. �������� ��� ������ �ּ�ȭ �� ����
���������� ����ϴ� ������ �����ϰ� ����ڿ� �������� �ּ�ȭ �Ͽ� ���������� �����ϴ� ��å�� �����ϰ� �ֽ��ϴ�.

2. �������� ��ü ���� �ǽ�
�������� ��� ���� ������ Ȯ���� ���� ������(�б� 1ȸ)���� ��ü ���縦 �ǽ��ϰ� �ֽ��ϴ�.

3. ���ΰ�����ȹ�� ���� �� ����
���������� ������ ó���� ���Ͽ� ���ΰ�����ȹ�� �����ϰ� �����ϰ� �ֽ��ϴ�.

4. ���������� ��ȣȭ
�̿����� ���������� ��й�ȣ�� ��ȣȭ �Ǿ� ���� �� �����ǰ� �־�, ���θ��� �� �� ������ �߿��� �����ʹ� ���� �� ���� �����͸� ��ȣȭ �ϰų� ���� ��� ����� ����ϴ� ���� ���� ���ȱ���� ����ϰ� �ֽ��ϴ�.

5. ��ŷ � ����� ����� ��å
<edenProject>('EDEN')�� ��ŷ�̳� ��ǻ�� ���̷��� � ���� �������� ���� �� �Ѽ��� ���� ���Ͽ� �������α׷��� ��ġ�ϰ� �ֱ����� ���š������� �ϸ� �ܺηκ��� ������ ������ ������ �ý����� ��ġ�ϰ� �����/���������� ���� �� �����ϰ� �ֽ��ϴ�.

6. ���������� ���� ���� ����
���������� ó���ϴ� �����ͺ��̽��ý��ۿ� ���� ���ٱ����� �ο�,����,���Ҹ� ���Ͽ� ���������� ���� ���������� ���Ͽ� �ʿ��� ��ġ�� �ϰ� ������ ħ�����ܽý����� �̿��Ͽ� �ܺηκ����� ���� ������ �����ϰ� �ֽ��ϴ�.

7. ���ӱ���� ���� �� ������ ����
��������ó���ý��ۿ� ������ ����� �ּ� 6���� �̻� ����, �����ϰ� ������, ���� ����� ������ �� ����, �нǵ��� �ʵ��� ���ȱ�� ����ϰ� �ֽ��ϴ�.



8. �������� ��ȣå���� �ۼ�


�� edenProject(��eden.com������ ��EDEN) ��(��) �������� ó���� ���� ������ �Ѱ��ؼ� å������, �������� ó���� ������ ������ü�� �Ҹ�ó�� �� ���ر��� ���� ���Ͽ� �Ʒ��� ���� �������� ��ȣå���ڸ� �����ϰ� �ֽ��ϴ�.

�� �������� ��ȣå���� 
���� :��Ը�
��å :��Ը�
���� :����
����ó :010-0000-0000, rbflrbfl@naver.com, 010-0000-0000
�� �������� ��ȣ ���μ��� ����˴ϴ�.

�� ������ü������ edenProject(��eden.com������ ��EDEN) �� ����(�Ǵ� ���)�� �̿��Ͻø鼭 �߻��� ��� �������� ��ȣ ���� ����, �Ҹ�ó��, ���ر��� � ���� ������ �������� ��ȣå���� �� ���μ��� �����Ͻ� �� �ֽ��ϴ�. edenProject(��eden.com������ ��EDEN) ��(��) ������ü�� ���ǿ� ���� ��ü ���� �亯 �� ó���ص帱 ���Դϴ�.


9. �������� ó����ħ ����

���� ��������ó����ħ�� �����Ϸκ��� ����Ǹ�, ���� �� ��ħ�� ���� ���泻���� �߰�, ���� �� ������ �ִ� ��쿡�� ��������� ���� 7�� ������ ���������� ���Ͽ� ������ ���Դϴ�.
				
				</pre><br/>
				<h4 align="right">
				<small class="text-muted"><input type="radio" name="ok" required>���� �մϴ�.</small>
				<small class="text-muted"><input type="radio" name="ok">���� ���� �ʽ��ϴ�.</small>
			</h4>
				
				    			
				    <!-- 		3.���ǰ����� <br/>
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
				<b>�Ŀ��� �� : <input type="text" name="Name" id="Name" placeholder="�Ǹ�(�Ա��ڸ�)���� �ۼ�" required></b>
				<!-- value = <'%'='"facebook.getMe().getName()" -->
			</h4>
			�Ŀ��ݾ� : <input type="text" name="Amount" id="Amount" required size="15"> ��
			<p class="impTag_p">

				* �Ŀ� ���� : <input type="radio" name="supportType" value="ST_short" required>1ȸ �Ŀ� / 
						   <input type="radio" name="supportType" value="ST_regular" required >���� �Ŀ� <br /> 
				* ���� ���� : <input
					type="radio" name="paymentType" value="PT_acntTf" required >�ǽð� ������ü / <input
					type="radio" name="paymentType" value="PT_deposit" required >������ �Ա� / <input
					type="radio" name="paymentType" value="PT_phnPM" required >�޴��� ����  / <br /> 
					��� �ÿ� �Աݾ��� ȯ�ҹ��� �ֹ��� ���Ƿ� �� ������ ���¸� �Է����ּ���<br /> <br /> 
				�Ա����� : 
				<%! String blank[] = {"�츮", "�ϳ�"}; %>
				<select name="bankName" id="bankName">
					<option selected="selected" value="bank_0">������ �����ϼ���</option>
					<option value="�츮">�츮����</option>
					<option value="�ϳ�">�ϳ�����</option>
					<option value="���">�������</option>
				</select> 
				���¹�ȣ : <input type="text" name="accountNum"   placeholder="'-'�� �����Ͽ� �ۼ�" required size="20"><br /> 
				�̸��� : <input type="text" id="email" name="email" placeholder="�ݵ�� ���� ������� �ּҷ� �ۼ����ּ��� " required size="40">				
				<input type="hidden" value="�Ա�" name="state">
				<input type="hidden" value="${sessionScope.user_num}" name="user_num">
				
				<br/>		<br/>		<br/>	
			
			
			</p>
			<h4></h4>
			<h4 align="right">
				<small class="text-muted">����ð��Ѹ���</small>
			</h4>
		</div>

		<div class="row divider">
			<div class="col-sm-12" align="right">
				<hr>
				<input type="submit" value="����ϱ�" onclick="formChck('g;')">
			</div>
		</div>

<br/>

<br/>

<br/>

<br/>
	</form>
</body>
</html>