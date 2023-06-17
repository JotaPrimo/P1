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

	<jsp:include page="/public/components/nav-bar.jsp" />

	<div class="container mt-5">

		<div class="card shadow-sm p-3 mb-5 bg-body-tertiary">
			<div class="card-body">

				<div class="d-flex justify-content-end">
					<a class="btn btn-primary"
						href="${pageContext.request.contextPath}/publica?acao=novo">Novo</a>
				</div>

				<div class="col-12 mt-2">
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
										<td><a class="btn btn-sm btn-warning"
											href="${pageContext.request.contextPath}/publica?acao=formEditar&id=<c:out value="${endereco.id}" />"
											title="Clique aqui para editar"> Editar </a></td>
										<td><a class="btn btn-sm btn-danger"
											onclick="return confirm('Você deseja apagar?');"
											href="${pageContext.request.contextPath}/publica?acao=apagar&id=<c:out value="${endereco.id}" />">
												Apagar </a></td>

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
