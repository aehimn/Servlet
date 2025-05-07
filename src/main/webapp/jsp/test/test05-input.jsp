<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/jsp/test/test05.jsp">
			<div class="d-flex align-items-end mb-1">
				<input type="text" name="value" class="form-control col-2">
				<div class="ml-1">cm</div>
			</div>
			<label>인치 <input type="checkbox" name="unit" value="in"></label>
			<label class="ml-2">야드 <input type="checkbox" name="unit" value="yd"></label>
			<label class="ml-2">피트 <input type="checkbox" name="unit" value="ft"></label>
			<label class="ml-2">미터 <input type="checkbox" name="unit" value="m"></label>
			<br>
			<button type="submit" class="btn btn-success">변환</button>
		</form>
	</div>

</body>
</html>