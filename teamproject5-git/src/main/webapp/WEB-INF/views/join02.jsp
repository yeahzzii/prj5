<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
/*body 초기화*/
body {
  margin: 0;
  padding: 0;
  font-family: 'Noto Sans KR', sans-serif;
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  overflow-x: hidden; 
}
a{
	text-decoration:none;
	color:inherit;	
}
.banner{
	padding: 50px 0 10px 0;
	width: 320px;
	height: 160px;
}

.CO2{
	display: inline-block;
	position: absolute;
	left: 5%;
	top: 120px;
	width: 160px;
	height: 70px;
	z-index: 1;
	
}

nav {
  width: 100%;
  display: flex;
  justify-content: center;
  position: relative;
  background: #ffffff;
}

ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}

#main-menu > li {
  float: left;
  position: relative;
}

#main-menu > li > a {
  font-size: 18px;
  font-weight: bold;
  color: #000000;
  text-align: center;
  text-decoration: none;
  letter-spacing: 0.05em;
  display: block;
  padding: 14px 50px;
}

#main-menu > li:hover{
	border-bottom: 2px solid #000000;
}

#main-menu > li > a:hover{
	color: rgb(210,210,210);
}

#sub-menu {
  position: absolute;
  background: rgba(61,61,61,0.8);
  opacity: 0;
  visibility: hidden;
  transition: all 0.15s ease-in;
}

#sub-menu > li {
  padding: 16px 20.5px;
  border-bottom: 1px solid rgba(0,0,0,0.15);
}

#sub-menu > li >  a {
  color: rgb(210,210,210);
  font-size: 15px;
  text-decoration: none;
}

#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}

#sub-menu > li >  a:hover {
 text-decoration: underline;
}

.btn_button{
    position: absolute;    
    top : 168px;           
    right : 5%;           
    margin : -50px 0 0 -150px;
    width: 230px;
    height: 60px;
    border-radius: 75px;
    color: #ffffff;
}
.btn_button .vol_guide{
    margin: 10px;
    height: 48px;
    border-radius: 50px;
    border: none;
}
    
.btn_button .vol_guide > div{
    position: relative;
    width: 100px;
    height:50px;
    background: #00AAAD;
    display: inline-block; *display: inline; *zoom: 1;
    cursor: pointer;
    transition: all 0.15s linear;
}


.btn_button .vol_guide .btn_login{
    border-radius: 50px 0 0 50px;
}

.btn_button .vol_guide .btn_login:hover{
	background-color: #ffffff;
	color: #00AAAD;
}

.btn_button .vol_guide .btn_login > a{
	display: block;
	position: relative;
	top: 12px;
	text-align: center;
}

.btn_button .vol_guide .btn_join{
    border-left: 2px soli;
    border-radius: 0 50px 50px 0;
}

.btn_button .vol_guide .btn_join:hover{
	background-color: #ffffff;
	color: #00AAAD;
}

.btn_button .vol_guide .btn_join > a{

	display: block;
	position: relative;
	top: 12px;
	text-align: center;
}    

h2 ,h3 , p{
	text-align:center;
	color:#777;
}
h2{
	margin:50px 0 30px;
	color:#777;
}

.main{
    margin:100px 0 100px;
	width: 570px;
	border: 1px solid #ccc;
	
}
p{
   margin-bottom:30px;
}
.wrap img{
	display:block;
	margin: 0 auto;
	width: 150px; 
	height: 150px;
}
form{padding:20px;}
form::after{
	clear:both;
	display:block;
	content:'';
}

form .text{border:1px solid #ccc; margin-bottom: 50px; background-color: #fefefe; width:100%; height:150px; overflow-y: scroll;}

form input{
	width: 100%; 
	height:50px; 
	margin-bottom: 20px;
	border: 1px solid #ccc;
}

#year{
	width:30%; 
	height:50px;
	border: 1px solid #ccc;
}
#month{
	width:30%;
	height:50px;
	border: 1px solid #ccc;
}
#day{
	width:30%;
	height:50px;
	border: 1px solid #ccc;
}

.chcek06 input{
	width:30%;
}

#nextBtn{
	margin:0 auto 20px; 
    display: block;
    padding: 15px 80px;
    background: #00AAAD;
    text-align: center;
    border: none;
    border-radius: 3px;
    outline: none;
    color: #fff;
    font-size: 24px;
}

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</style>
<!-- 7/15 -->
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script> 
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>


<script type="text/javascript">

$(document).ready(function(){
	$("[name=pw]").keyup(function(){
		  if(event.keyCode==13){ 
			  var pwVal=$(this).val() 
	  	  if(pwVal.length>=5 && pwVal.length<=15){
	  		  $("h5").text("유효한 비밀번호입니다.").css("color","blue")
	  	  } else {
	  		  $("h5").text("비밀번호 입력범위는 (5~15)입니다."
	  				  ).css("color","red")	  
	  	  }
		  }
	 });
});

$(document).ready(function(){
	$("[name=id]").keyup(function(){
		  if(event.keyCode==13){ 
			  var idVal=$(this).val()
	  	  if(idVal.length>=5 && idVal.length<=15){
	  		  $("h4").text("유효한 아이디입니다.").css("color","blue")
	  	  } else {
	  		  $("h4").text("아이디 입력범위는 (5~15)입니다."
	  				  ).css("color","red")	  
	  	  }
		  }
	 });
});
$(document).ready(function(){
	$("[name=pwc]").keyup(function(){
		  if(event.keyCode==13){ 
			  var pwVal=$("[name=pw]").val()
			  var pwcVal=$(this).val() 
	  	  if(pwcVal==pwVal){
	  		  $("h6").text("비밀번호가 일치합니다.").css("color","blue")
	  	  } else {
	  		  $("h6").text("비밀번호가 일치하지 않습니다."
	  				  ).css("color","red")	  
	  	  }
		  }
	 });
});
$(document).ready(function(){
	$("[name=name]").keyup(function(){
		  if(event.keyCode==13){ 
			  var nameVal=$(this).val() 
	  	  if(!nameVal){
	  		$("h7").text("필수 입력값 입니다"
			  ).css("color","red")	 
	  	  } else {
	  		$("h7").text("입력 완료").css("color","blue")	  
	  	  }
		  }
	 });
});
</script>

</head>

<body>
<img class="banner" src="./a00_img/banner.png" onclick="location.href='http://localhost:7080/teamproject5/a01_Yeji/main/main2.jsp'">
<img class="CO2" src="./a00_img/CO2.JPG" onclick="location.href='http://localhost:7080/teamproject5/dataList.do'">
<nav role="navigation">
  <ul id="main-menu">
    <li><a href="http://localhost:7080/teamproject5/a01_Yeji/fullcalendar-5.11.0/examples/selectable.html">마이페이지</a></li>
    <li><a href="http://localhost:7080/teamproject5/videoList.do">영상자료</a></li>
    <li><a href="http://localhost:7080/teamproject5/freeBoardList.do">자유게시판</a></li>
    <li><a href="#">이벤트</a>
      <ul id="sub-menu">
        <li><a href="http://localhost:7080/teamproject5/cagList.do" aria-label="subemnu">퀴즈</a></li>
        <li><a href="https://yjproject5.netlify.app/" aria-label="subemnu">성격유형테스트</a></li>
      </ul>
    </li>
    <li><a href="http://localhost:7080/teamproject5/a01_Yeji/Store/list.jsp">감탄사굿즈</a></li>
  </ul>
</nav>

<div class="btn_button">       
    <div class="vol_guide">     
        <div class="btn_login" onclick=""> 
            <a href="http://localhost:7080/teamproject5/loginForm.do">로그인</a>
        </div><!--
     --><div class="btn_join" onclick="">  
            <a href="http://localhost:7080/teamproject5/joinForm.do">회원가입</a>
            <div></div>
        </div>
    </div>
</div>

<div class="main">
	<h2>회원가입</h2>
	<div class="wrap">
		<img src="./a00_img/join.png" alt=""/>
		<h3>회원정보를 입력해 주세요.</h3>
	</div>
	
	<form id="frm01" action="${path}/memberInsert.do" class="form"  method="post">
	   	<div class="chcek01">
	   	   <input type="text" name="id" id="id" class="form-control" value="" placeholder="아이디"/><br>
	   	   <h4></h4>
	   	</div>
	   	<div class="chcek02">
	   	   <input type="text" name="pw" id="pw" class="form-control" value="" placeholder="비밀번호"/><br>
	   	   <h5></h5>	
	   	</div>
	   	<div class="chcek03">
	   	   <input type="text" name="pwc" id="pwc" class="form-control" value="" placeholder="비밀번호 확인"/><br>
	   	   <h6></h6>	
	   	</div>
	   	
		<div class="check04">
		    <p>이름(필수)</p>
			<input type="text" name="name" id="name" class="form-control" value="" placeholder="이름"/><br>
			<h7></h7>
		</div>
		
		<div class="chcek06">
			<p>휴대폰</p>
	   	   <input type="text" name="ph01" id="first" value="" placeholder="010"/>-
	   	   <input type="text" name="ph02" id="second" value="" placeholder="0000"/>-
	   	   <input type="text" name="phoneNum" id="third" value="" placeholder="0000"/>	
	   	</div>
	   	
		<div class="check05">
		    <p>생년월일(필수)</p>
		    <input type="text" name="birth" id="" class="form-control" value="" placeholder="생년월일"/><br>
		    <%-- 
		    <select name="birth" id="year">
              <option value="">1990</option>
              <option value="">1991</option>
              <option value="">1992</option>
              <option value="">1993</option>
              <option value="">1994</option>
              <option value="">1995</option>
              <option value="">1996</option>
              <option value="">1997</option>
            </select>
            <select name="" id="month">
              <option value="">01</option>
              <option value="">02</option>
              <option value="">03</option>
              <option value="">04</option>
              <option value="">05</option>
              <option value="">06</option>
              <option value="">07</option>
              <option value="">08</option>
              <option value="">09</option>
              <option value="">10</option>
              <option value="">11</option>
              <option value="">12</option>
            </select>
            <select name="" id="day">
              <option value="">01</option>
              <option value="">02</option>
              <option value="">03</option>
              <option value="">04</option>
              <option value="">05</option>
              <option value="">06</option>
              <option value="">07</option>
              <option value="">08</option>
              <option value="">09</option>
              <option value="">10</option>
              <option value="">11</option>
              <option value="">12</option>
              <option value="">13</option>
              <option value="">14</option>
              <option value="">15</option>
              <option value="">16</option>
              <option value="">17</option>
              <option value="">18</option>
              <option value="">19</option>
              <option value="">20</option>
              <option value="">21</option>
              <option value="">22</option>
              <option value="">23</option>
              <option value="">24</option>
              <option value="">25</option>
              <option value="">26</option>
              <option value="">27</option>
              <option value="">28</option>
              <option value="">29</option>
              <option value="">30</option>
            </select>
            --%>
		</div>
		
		<div class="check04">
		    <p>이메일(필수)</p>
			<input type="text" name="email" id="eamil" value="" placeholder="eamil"/>
		</div>
		
		<div>
		  <button type="button" onclick="insertProc()" class="btn btn-success">회원가입</button>
		</div>
	</form>
</div>


<script type="text/javascript">

	function insertProc(){
	   if(confirm("등록하시겠습니까?")){
	      var idVal = $("[name=id]").val();
	      if(idVal == ""){
	         alert("아이디를 입력하세요");
	         $("[name=id]").focus();
	         return; // 프로세스를 중단 처리
	      }
	      var pwVal = $("[name=pw]").val();
	      if(pwVal == ""){
	         alert("비밀번호를 입력하세요");
	         $("[name=pw]").focus();
	         return; // 프로세스를 중단 처리
	      }
	      alert("등록!")
	      document.querySelector("form").submit();
	   }
	}
/*
	function goMain(){
		   location.href="${path}/boardList.do";
		}
*/



var isInsert = "${isInsert}"
    if(isInsert=="Y"){
        if(!confirm("등록성공했습니다\n계속등록하시겠습니까?")){
            // 취소 입력시 조회화면 이동 (임시)
            location.href="${path}/videoList.do"
         }   
    }

</script>

</body>
</html>