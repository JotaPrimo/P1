<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<nav class="navbar bg-dark text-white navbar-expand-lg bg-body-tertiary">

  <div class="container-fluid text-white">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       <!-- 
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Endereços
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/publica?acao=listar">Listar</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/publica?acao=novo">Criar</a></li>
          </ul>
        </li>        
      </ul>      
    </div>
  </div>
</nav>  

</body>
</html>