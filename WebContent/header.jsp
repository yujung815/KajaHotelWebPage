<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/header.css">
<meta charset="UTF-8">
<title>KAJA 호텔에 오신걸 환영합니다.</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
</script>

<script>
	$(function() {

		$('#dropmenu .rooms').hide();

		$('.info').mouseover(function() {
			$('.rooms').slideDown();
		});

		$('.info').mouseleave(function() {
			$('.rooms').hide();
		});

});
	
	/* $(function(){
		document.getElementById("logout").onclick=function(){
			document.user_logout.submit();
		};
	}); */
</script>

</head>
<body>

	<header>
		<div class="logo">

				<h1 align=center>
					<a href="index.jsp"><b>KAJA <br />HOTEL
					</b><br /></a>
				</h1>
			</div>

			<div>
				<nav class="nav1" >
					<ul>
					
					<c:choose>
						  <c:when test="${login ne 'yes'}" >
							<li><a href="loginpage.jsp">로그인 |</a> 
							<a href="join.jsp">회원가입</a></li>
						</c:when>
						<c:when test="${login eq 'yes' }">
							 <li><%=session.getAttribute("username") %>님 환영합니다. |</li> 
							 <li><a href="logOutNow.do"> 로그아웃 </a></li>
						 </c:when>
					</c:choose>
	
					</ul>
					<br /> <br />
				</nav>
			</div>
			
			<div id="dropmenu">
				<ul>
					<li><a href="kjbrand.jsp">KAJA소개</a></li>
					<li><a href="bude.jsp">부대시설</a></li>
					<li class="info"><a href="#">객실안내</a>
						<ul class="rooms">
							<li><a href="ondalRoom.jsp">Ondal Room</a></li>
							<li><a href="bidamRoom.jsp">Bidam Room</a></li>
							<li><a href="chunhyangRoom.jsp">Chunhyang Room</a></li>
						</ul></li>
					<li><a href="#">예약확인</a></li>
				</ul>
			</div>
	</header>
<!-- <form name="user_logout" action="/logOutNow.do" method="post">
<input type="hidden">
</form> -->

</body>
</html>