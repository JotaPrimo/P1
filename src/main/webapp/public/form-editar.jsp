<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>P1 LP III</title>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</head>

<body>

<jsp:include page="/public/components/nav-bar.jsp" />

	<!-- container -->
	<div class="container">
	
	<div class="card shadow mt-5 bg-body">
  		<div class="card-body">
  
		<a class="btn btn-sm btn-success" href="${pageContext.request.contextPath}/publica?acao=listar">Listar</a>

		<div class="row">	
			
			<div class="col">
				<h2>Editar endere�o</h2>
				
				<c:if test="${mensagem != null}">
				 	<div class="alert alert-success alert-dismissible fade show">
					<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
					<span><c:out value="${mensagem}" /></span>
				</div>
				</c:if>	
				
				<form action="${pageContext.request.contextPath}/publica?acao=update" method="POST">
							<input type="hidden" name="id" value="<c:out value='${endereco.id}' />" /> 
							<div class="mb-3">
								<div class="row">
									<div class="col-md-6 col-sm-12 mb-3">
										<label for="logradouro" class="form-label">Logradouro</label>
										<input type="text" name="logradouro" value="<c:out value='${endereco.logradouro}' />" required placeholder="Logradouro" minlength="3" maxlength="150" class="form-control">
									</div>

									<div class="col-md-6 col-sm-12 mb-3">
										<label for="cidade" class="form-label">Cidade</label>
										<input type="text" class="form-control" value="<c:out value='${endereco.cidade}' />" name="cidade" required placeholder="Cidade" minlength="5" maxlength="200">
									</div>
									
								</div>


								<div class="row">
									<div class="col-md-6 col-sm-12 mb-3">
										<label for="bairro" class="form-label">Bairro</label>
										<input type="text" class="form-control" value="<c:out value='${endereco.bairro}' />" name="bairro" required placeholder="Bairro" minlength="3" maxlength="50">
									</div>
									

									<div class="col-md-6 col-sm-12 mb-3">
										<label for="exampleInputBairro1" class="form-label">N�mero</label>
										<input type="number" class="form-control" value="<c:out value='${endereco.numero}' />" name="numero" required placeholder="Numero" min="1" max="155550">
									</div>

								</div>

								<button type="submit" class="btn btn-primary">Atualizar</button>
						</form>
					
			</div>
		</div>
	
		</div>
	</div>
	</div>
</body>
</html>