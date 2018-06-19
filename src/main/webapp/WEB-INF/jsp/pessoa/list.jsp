<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Listagem de Pessoas</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	</head>
	<body>
		
		<form action="list" >
			<div class="form-group">
				<label for="nomeIpt" >Nome</label>
				<input id="nomeIpt" class="form-control" name="pessoa.nome" />
			</div>	
			
			<div class="btn-group">
				<button type="submit" class="btn btn-secondary" >
					<i class="fas fa-search"></i> Pesquisar
				</button>
				<a class="btn btn-primary" href="#" role="button" >
					<i class="fas fa-plus"></i> Novo
				</a>
			</div>
		</form>
	
		<table class="table table-striped table-hover table-bordered" >
			<thead class="table-dark" >
				<tr>
					<th class="col" >Nome</th>
					<th class="col" >CPF</th>
					<th class="col" >E-mail</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pessoaList}" var="p" >
					<tr>
						<td>${p.nome}</td>
						<td>${p.cpf}</td>
						<td>${p.email}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>