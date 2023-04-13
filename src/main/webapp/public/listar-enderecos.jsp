<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Endereços</title>


<link
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>


</head>
<body>	

	<div class="container">
		<div class="mt-5 d-flex justify-content-end">
			<a class="btn btn-primary" href="${pageContext.request.contextPath}/publica?acao=novo">Novo endereço</a>
		</div>
		
		<div class="col-12 mt-2">
			<div class="card shadow-sm p-3 mb-5 bg-body-tertiary">	
			<div class="card-body">
			<div class="col">							
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Logradouro</th>
							<th>Cidade</th>
							<th>Bairro</th>		
							<th>Número</th>							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="endereco" items="${listaEnderecos}">
							<tr>
								<td><c:out value="${endereco.id}" /></td>
								<td><c:out value="${endereco.logradouro}" /></td>
								<td><c:out value="${endereco.cidade}" /></td>								
								<td><c:out value="${endereco.bairro}" /></td>
								<td><c:out value="${endereco.numero}" /></td>															
							
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>		
			</div>
		</div>	
		</div>
	</div>
	
</body>
</html>
