<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ã��</title>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<br><br><br><br>

<table align = "center">
		<tr>
			<th colspan="3"><h2>��й�ȣ ã��</h2></th>
		<tr>
		<tr>
			<td colspan="3"><p>��й�ȣ�� ��ﳪ�� �����ó���?<br>���̵�(�̸���)�� ��й�ȣ Ȯ�� �������� ��й�ȣ�� ã�� �� �ֽ��ϴ�.<p></td>	
		<tr>
		<tr>
			<td colspan="3"><p>���̵�(�̸���) �Է�<p></td>
		<tr>
		<tr>
			<td colspan="3"><input type="text" name="findPWemail" placeholder="�̸��� �Է�" required></td>
		<tr>
		<tr>
			<td colspan="3"><p>��й�ȣ Ȯ�� ����<p></td>
		<tr>
		<tr>
			<td colspan="3"><select id="hint" name="hint" fw-filter="" fw-label="hint" fw-msg="">
									<option value="hint_01">��￡ ���� �߾��� ��Ҵ�?</option>
									<option value="hint_02">�ڽ��� �λ� �¿����?</option>
									<option value="hint_03">�ڽ��� ���� ��1ȣ��?</option>
									<option value="hint_04">���� ��￡ ���� ������ ������?</option>
									<option value="hint_05">Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?</option>
									<option value="hint_06">�߾��ϰ� ���� ��¥�� �ִٸ�?</option>
									<option value="hint_07">�޾Ҵ� ���� �� ��￡ ���� ��Ư�� ������?</option>
									<option value="hint_08">������� ���� �������� ģ�� �̸���?</option>
									<option value="hint_09">�λ� ��� ���� å �̸���?</option>
									<option value="hint_10">���� å �߿��� �����ϴ� ������ �ִٸ�?</option>
									<option value="hint_11">�ڽ��� �ι�°�� �����ϴ� �ι���?</option>
									<option value="hint_12">ģ���鿡�� �������� ���� � �� ������ �ִٸ�?</option>
									<option value="hint_13">�ʵ��б� �� ��￡ ���� ¦�� �̸���?</option>
									<option value="hint_14">�ٽ� �¾�� �ǰ� ���� ����?</option>
									<option value="hint_15">���� �����ϴ� ĳ���ʹ�?</option>
			</select></td>
		<tr>
		<tr>
			<td colspan="2"><input type="text" name="findPWqna" placeholder="��й�ȣ Ȯ�� ���� �亯" required></td>
			<td><input type="submit" value="ã��">
		<tr>
	
	
	</table>
<br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>