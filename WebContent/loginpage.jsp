<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
 

$(document).ready(function() {
    var userInputId = getCookie("userInputId");
    var setCookieYN = getCookie("setCookieYN");
    
    if(setCookieYN == 'Y') {
        $("#saveidinfo").prop("checked", true);
    } else {
        $("#saveidinfo").prop("checked", false);
    }
    
    $("#inputmail").val(userInputId); 
    
    //�α��� ��ư Ŭ��
    $('#loginbtn').click(function() {
        if($("#saveidinfo").is(":checked")){ 
            var userInputId = $("#inputmail").val();
            setCookie("userInputId", userInputId, 60); 
            setCookie("setCookieYN", "Y", 60);
        } else {
            deleteCookie("userInputId");
            deleteCookie("setCookieYN");
        }
        
        document.form.submit();
    });
});



function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + 
    exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

//��Ű�� ��������
function getCookie(cookie_name) {
    var x, y;
    var val = document.cookie.split(';');
    
    for (var i = 0; i < val.length; i++) {
        x = val[i].substr(0, val[i].indexOf('='));
        y = val[i].substr(val[i].indexOf('=') + 1);
        x = x.replace(/^\s+|\s+$/g, ''); // �հ� ���� ���� �����ϱ�
        
        if (x == cookie_name) {
          return unescape(y); // unescape�� ���ڵ� �� �� ����
        }
    }
}




</script>
<style>
td{
	text-size:10px;
	margin: 4px;
	text-align:center;
	
}

</style>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<form action="loginNow.do" method="post">
<%request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");%>
	<br><br><br><br>
	<table align="center">
		<tr>
			<th colspan="2"><h2>ȸ�� �α���</h2></th>
		<tr>
		<tr>
			<td>�̸���</td>
			<td>
				<input type="text" id="inputmail" name="inputmail"  placeholder="abc@kaja.com" maxlength="15" required>
			</td>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="inputpwd" maxlength="15" required></td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input type="checkbox" id="saveidinfo">���̵� �����ϱ�
			</td>
			
		</tr>
		<tr>
			<td></td><td><input type="submit" id="loginbtn" value="�α���">
			<a href="join.jsp"> | ȸ������</a>
			</td>
		</tr>
		<tr>
			<td colspan="2"><a href="���̵�ã��.jsp">���̵�ã��</a> | <a href="��й�ȣã��.jsp">��й�ȣ ã��</a>
			<br><br><br><br>
		</td>
		</tr>
		
	</table>
</form>

<!-- <div align="center">	
	<form action="login.jsp" method="post" >
    	<h1 align=center>�α���</h1>
		<table border="0" >
    	<tr >
    		<th rowspan="3" align="center"><h3><b>ȸ�� �α���</b></h3></th>
    	</tr>
    	<tr>
    		<td>�̸���</td>
    		<td rowspan="2"><input type="text" class="email" placeholder="������ �̸���" required></td>
    	</tr>
    	<tr>
    		<td>��й�ȣ</td>
    		<td rowspan="2"><input type="password" class="pw" placeholder="��й�ȣ �Է�" required></td>
    	</tr>
    	<tr>
    		<td rowspan="3" align="left">
    			<input type="submit" value="�α���">    			
    		<td>
    	</tr>
    	</table>
    </form>

	   <input type="checkbox" id="saveid" >���̵� ����
    	<a href="./findId.do">���̵� ã��</a>
    	<a href="./findPwd.do">��й�ȣ ã��</a><br>
    
    	<p>
        	���� ȸ���� �ƴϽŰ���?
        	<button type="button" onclick="">ȸ������</button>
    	</p>
    	</div> -->
   <%--  <%
    
    String msg=request.getParameter("msg");
    
    if(msg!=null && msg.equals("0")) 
    {
        out.println("<br>");
        out.println("<font color='red' size='5'>��й�ȣ�� Ȯ���� �ּ���.</font>");
    }
    else if(msg!=null && msg.equals("-1"))
    {    
        out.println("<br>");
        out.println("<font color='red' size='5'>���̵� Ȯ���� �ּ���.</font>");
    }
    
    %> --%>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>