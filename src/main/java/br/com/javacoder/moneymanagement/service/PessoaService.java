package br.com.javacoder.moneymanagement.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.javacoder.moneymanagement.modelo.Pessoa;

public class PessoaService {

	public List<Pessoa> list() {
		List<Pessoa> lista = new ArrayList<Pessoa>();
		lista.add(new Pessoa("Anderson", "05029553339", new Date(), "a@a.com"));
		lista.add(new Pessoa("Rebeka", "05025979631", new Date(), "r@r.com"));
		return lista;
	}

}
