<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1 class="mt-3">메뉴검색</h1>
		<form method="post" action="/jsp/test/test07.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-3" name="search">
				<div class="d-flex align-items-center">
					<label class="m-0"><input type="checkbox" class="mx-1" name="above4" value="true">4점 이하 제외</label>
				</div>
			</div>
			<button type="submit" class="btn btn-success mt-3">검색</button>
		</form>
	</div>

</body>
</html>