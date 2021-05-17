<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h1>예약하기</h1>
<form action="bk_chk.jpg" method="post">
<table border=1 align="center">
	<tr>
		<td width="50%"  >
			<img src="${param.picture}" padding="20%">
		</td>
	
		<td  width="50%" align="center">
			<P>룸타입: ${param.roomtype }</P><br>
			<p>1박 요금: ${param.price }</p><br>
			<p>체크인날짜 선택<input type="date" name="checkindate"></p><br>
			<p>체크아웃 날짜 선택<input type="date" name="checkoutdate"></p><br>
		<div>
			<p> 결제정보입력<p>
			<p>
				<select>
					<option name="card" value="MCM">MCM</option>
					<option name="card" value="VISA">VISA</option>
				</select>
				
				<input type="number"  value="card1" width="5px" maxlength="4" required>
				-<input type="number" value="card2" width="5px" maxlength="4" required>
				-<input type="number" value="card3" width="5px" maxlength="4" required>
				-<input type="number" value="card4" width="5px" maxlength="4" required>
			</p>
			
			<input type="submit" value="예약하기">
			<input type="reset" value="취소하기">
 		</div>
		</td>
	</tr>
		 	

</table>
</form>

</body>
</html>