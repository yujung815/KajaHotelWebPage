<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵� ã��</title>
<script type="text/javascript">
    function inNumber(){
        if(event.keyCode<48 || event.keyCode>57){
           event.returnValue=false;
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
<jsp:include page="/header.jsp"/>
<br><br><br><br>

	<table align = "center">
		<tr>
			<th colspan="3"><h2>���̵� ã��</h2></th>
		<tr>
		<tr>
			<td colspan="3"><p>���̵� ��ﳪ�� �����ó���?<br>��ϵ� ���� �������� ���̵� ã�� �� �ֽ��ϴ�.<p></td>	
		<tr>
		<tr>
			<td colspan="3"><p>ȸ�������� ��ϵ� ��ȭ��ȣ�� ã��<p></td>
		<tr>
		<tr>
			<td colspan="2"><input type="tel" name="findID" placeholder="��ȭ��ȣ �Է�" required></td>
			<td><input type="submit" value="ã��">
		<tr>
	
	
	</table>
	<br><br><br><br>
	
   <jsp:include page="footer.jsp"/>
</body>
</html>