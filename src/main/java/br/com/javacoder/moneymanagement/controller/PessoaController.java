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
	public List<Pessoa> list(final Pessoa pessoa) {
		if (null != pessoa) {
			return pesquisarPorFiltro(pessoa);
		}
		return pesquisarTodas();
	}

	private List<Pessoa> pesquisarPorFiltro(Pessoa pessoa) {
		PessoaService pessoaService = new PessoaService();
		List<Pessoa> lista = pessoaService.listByFilter(pessoa);
		return lista;
	}

	private List<Pessoa> pesquisarTodas() {
		PessoaService pessoaService = new PessoaService();
		return pessoaService.listAll();
	}

}
