<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>


</head>
<body>
	
	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col mt-5">
			<!-- barra de navegação -->
				<a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/publica?acao=novo">Novo Endereco</a>
				<a class="btn btn-sm btn-success" href="${pageContext.request.contextPath}/publica?acao=listar">Listar Endereços</a>
				<h2>Index</h2>
			</div>
		</div>
	</div>


</body>
</html>
