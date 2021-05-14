<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 정보 확인</title>
</head>
<body>
<div align=center>
	<div class="bk_chk" style="color:green; font-size:50px;" >예약 정보 확인</div>
	<div class="hotel_name"><h3>KAJA HOTEL-종로</h3></div>
	<div class="hotel_number"><h3>02-366-3667</h3></div>
</div>
<div style="position:relative; left:700px;">
	<div class="bk_num">예약 번호:${bk.bkNum}</div><br>
	<div class="chk_inNum">체크인 날짜:${bk.chk_inNum}</div><br>
	<div class="chk_outNum">체크아웃 날짜:${bk.chk_outNum}</div><br>
	<div class="room_type">룸 타입: ${bk.room_type}</div><br>
	<div class="bk_name">예약자 이름:${bk.bkLName} ${bk.bkFName}님</div><br>
	<div class="head_cnt">숙박인원:${bk.head_cnt} 명</div><br>
</div>

</body>
</html>