<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
		<a class="mt-5 btn btn-sm btn-success" href="${pageContext.request.contextPath}/publica?acao=listar">Listar Endereços</a>

		<div class="row mt-5">	
			
			<div class="col">
				<h2>Cadastro de Endereço</h2>
				
				<c:if test="${mensagem != null}">
				 	<div class="alert alert-success alert-dismissible fade show">
					<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
					<span><c:out value="${mensagem}" /></span>
				</div>
				</c:if>	
				
				
				<div class="card">
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/publica?acao=inserir" method="POST">
							<div class="mb-3">
								<div class="row">
									<div class="col-md-6 col-sm-12 mb-3">
										<label for="exampleInputBairro1" class="form-label">Logradouro</label>
										<input type="text" name="logradouro" required placeholder="Logradouro" minlength="3" maxlength="150" class="form-control">
									</div>

									<div class="col-md-6 col-sm-12 mb-3">
										<label for="exampleInputBairro1" class="form-label">Cidade</label>
										<input type="text" class="form-control" name="cidade" required placeholder="Cidade" minlength="5" maxlength="200">
									</div>
									
								</div>


								<div class="row">
									<div class="col-md-6 col-sm-12 mb-3">
										<label for="exampleInputBairro1" class="form-label">Bairro</label>
										<input type="text" class="form-control" name="bairro" required placeholder="Bairro" minlength="3" maxlength="50">
									</div>
									

									<div class="col-md-6 col-sm-12 mb-3">
										<label for="exampleInputBairro1" class="form-label">Numero</label>
										<input type="number" class="form-control" name="numero" required placeholder="Numero" min="1" max="155550">
									</div>

								</div>

								<button type="submit" class="btn btn-primary">Salvar</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>