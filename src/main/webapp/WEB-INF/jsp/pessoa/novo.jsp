<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastro Pessoa</title>
	</head>
	<body>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous" ></script>
		<script>
		    function jsonPost(url, body, successCallback){
		    	return $.ajax({
					type: "POST",
					url: url,
		    		contentType: "application/json",
					data: JSON.stringify(body),
					headers: {
				        'Content-Type':'application/json'
				    },
					success: successCallback,
	    		});
		    };
		</script>
	
		<form >
			<div class="form-group">
				<label for="nomeIpt" >Nome</label>
				<input id="nomeIpt" class="form-control" name="pessoa.nome" />
			</div>	
			
			<div class="btn-group">
				<button  id="save" type="button" class="btn btn-secondary" onclick="jsonPost('salvar', {pessoa: {nome: $('#nomeIpt').val()} });" >
					<i class="fas fa-search"></i> Salvar
				</button>
				<button type="button" class="btn btn-light" >
					<i class="fas fa-sync-alt"></i> Cancelar 
				</button>
			</div>
		</form>
	</body>
</html>