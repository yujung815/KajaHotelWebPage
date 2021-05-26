<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript"></script>
<style>
td{
	text-size:10px;
	margin: 4px;
	text-align:center;
	
}

table{
	margin:10% 40% 10%;
	height:45%;
}

th{
	text-align: center;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<form action="loginNow.do"  method="post">

	<br><br><br><br>
	<table >
		<tr>
			<th colspan="2"><h2>회원 로그인</h2></th>
		<tr>
		<tr>
			<td>이메일</td>
			<td>
				<input type="text" name="inputmail"  placeholder="abc@kaja.com" maxlength="15" required>
			</td>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="inputpwd" maxlength="15" required></td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input type="checkbox" name="saveidinfo">아이디 저장하기
			</td>
			
		</tr>
		<tr>
			<td></td><td><input type="submit" value="로그인">
			<a href="join.jsp"> | 회원가입</a>
			</td>
		</tr>
		<tr>
			<td colspan="2"><a href="아이디찾기.jsp">아이디찾기</a> | <a href="비밀번호찾기.jsp">비밀번호 찾기</a>
			<br><br><br><br>
		</td>
		</tr>
		
	</table>
</form>

<!-- <div align="center">	
	<form action="login.jsp" method="post" >
    	<h1 align=center>로그인</h1>
		<table border="0" >
    	<tr >
    		<th rowspan="3" align="center"><h3><b>회원 로그인</b></h3></th>
    	</tr>
    	<tr>
    		<td>이메일</td>
    		<td rowspan="2"><input type="text" class="email" placeholder="가입한 이메일" required></td>
    	</tr>
    	<tr>
    		<td>비밀번호</td>
    		<td rowspan="2"><input type="password" class="pw" placeholder="비밀번호 입력" required></td>
    	</tr>
    	<tr>
    		<td rowspan="3" align="left">
    			<input type="submit" value="로그인">    			
    		<td>
    	</tr>
    	</table>
    </form>

	   <input type="checkbox" id="saveid" >아이디 저장
    	<a href="./findId.do">아이디 찾기</a>
    	<a href="./findPwd.do">비밀번호 찾기</a><br>
    
    	<p>
        	아직 회원이 아니신가요?
        	<button type="button" onclick="">회원가입</button>
    	</p>
    	</div> -->
   <%--  <%
    
    String msg=request.getParameter("msg");
    
    if(msg!=null && msg.equals("0")) 
    {
        out.println("<br>");
        out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
    }
    else if(msg!=null && msg.equals("-1"))
    {    
        out.println("<br>");
        out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
    }
    
    %> --%>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>