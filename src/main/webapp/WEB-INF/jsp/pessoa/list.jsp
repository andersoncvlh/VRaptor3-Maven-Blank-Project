<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Listagem de Pessoas</title>
	</head>
	<body>
		<label for="nomeIpt" >Nome</label>
		<input id="nomeIpt" />
		
		<label for="cpfIpt" >CPF</label>
		<input id="cpfIpt" />
		
		<label for="emailIpt" >Email</label>
		<input id="emailIpt" />
		
		<button >Pesquisar</button>
		<button >Limpar</button>
	
		<table>
			<thead>
				<tr>
					<th>Nome</th>
					<th>CPF</th>
					<th>E-mail</th>
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