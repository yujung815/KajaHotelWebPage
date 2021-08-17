<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KAJA 호텔에 오신걸 환영합니다.</title>
<link rel="stylesheet" href="index.css">
<jsp:include page="header.jsp"></jsp:include>
<style type="text/css">
.aside{
margin-top: 100px;
margin-bottom: 100px;

}
</style>
</head>
<body>

	<div class="Mbanner"></div>

	<div>
		<h3>< 부대시설 미리보기 ></h3>
	</div>

	<section>
		<div class="aside">
			<ul>
				<img src="pictures/swing.jpg" alt="수영장">
		
			</ul>
		</div>
	</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>