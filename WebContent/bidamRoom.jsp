<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>bidamRoom</title>
<!-- <link rel="stylesheet" href="kajaroom.css"> -->
</head>
<body>
<h1>BidamRoom</h1>
<form action="loginCheck.do">
<table border=0>
<tr>
	<td width=50%>
		<img src="pictures/bidam.jpg" width="100%" >
		<input type="hidden" name="picture" value="pictures/bidam.jpg">
	</td>
	<td  width=50% align="center">
		<p>프리미어 트윈, 2개 더블베드,시티 전망</p>
		<input type="hidden" name="roomtype" value="프리미어 트윈, 2개 더블베드,시티 전망">
	
		<p>인원 : 성인 2명 </p>
	
		<p>1박 요금 : 130,000KRW </p>
		<input type="hidden" name="price" value="130000">
	<P><b>지금 당장 예약하려면!</b> <input type="submit"  value="예약하기" ></P>
	</td>

</tr>
</table>
</form>



</body>
</html>