package br.com.javacoder.moneymanagement.controller;

import java.util.List;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.javacoder.moneymanagement.modelo.Pessoa;
import br.com.javacoder.moneymanagement.service.PessoaService;

@Resource
public class PessoaController {

	@Get
	@Path("/pessoa/list")
	public List<Pessoa> list() {
		PessoaService pessoaService = new PessoaService();
		return pessoaService.list();
	}
	
}
