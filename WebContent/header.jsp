<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>KAJA ȣ�ڿ� ���Ű� ȯ���մϴ�.</title>
<link rel="stylesheet" href="header.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
</script>

<script>
$(document).ready(function() {

	$('#dropmenu .rooms').hide();

	$('.info').mouseover(function() {
		$('.rooms').slideDown();
	});

	$('.info').mouseleave(function() {
		$('.rooms').hide();
	});
});

var login="<%=session.getAttribute("login")%>"
	


	function chkREV() {
		var login="<%=session.getAttribute("login")%>"
		
		if(login !="yes"){
			swal("�α��� ���� ���ּ���");
			return false;
		}
		
	}
</script>



</head>
<body>
	<header>
		<div class="logo">

			<div>
				<h1 align=center>
					<a href="index.jsp">KAJA <br />HOTEL
					</b><br /></a>
				</h1>
			</div>

		<nav class="nav1">
				<!-- <ul class="loginmenu">
					<li><a href="loginpage.jsp">�α��� |</a> <a
						href="join.jsp">ȸ������</a></li>
				
				</ul> -->
					<ul>
					
					<c:choose>
						<c:when test="${login ne 'yes'}" >
							<li><a href="loginpage.jsp">�α��� |</a> 
							<a href="join.jsp">ȸ������</a></li>
						</c:when>
						<c:when test="${login eq 'yes' }">
							 <li><%=session.getAttribute("username") %>�� ȯ���մϴ�. |</li> 
							 <li><a href="logOutNow.do"> �α׾ƿ� </a></li>
						 </c:when>
					</c:choose>
	
					</ul>
				<br /> <br />
			</nav>

			
			<div id="dropmenu">
				<ul>
					<li><a href="kajabrand.jsp">KAJA�Ұ�</a></li>
					<li><a href="bude.jsp">�δ�ü�</a></li>
					<li class="info"><a href="#">���Ǿȳ�</a>
						<ul class="rooms">
							<li><a href="ondalRoom.jsp">Ondal Room</a></li>
							<li><a href="bidamRoom.jsp">Bidam Room</a></li>
							<li><a href="chunhyangRoom.jsp">Chunhyang Room</a></li>
						</ul></li>
					<li><a href="bk_chk.do" onclick="return chkREV();">����Ȯ��</a></li>
				</ul>
			</div>
	</header>

</body>
</html>