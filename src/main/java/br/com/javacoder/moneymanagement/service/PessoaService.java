package br.com.javacoder.moneymanagement.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.javacoder.moneymanagement.modelo.Pessoa;

public class PessoaService {

	public List<Pessoa> listAll() {
		List<Pessoa> lista = todasPessoas();
		return lista;
	}

	public List<Pessoa> listByFilter(Pessoa filtro) {
		List<Pessoa> pessoas = todasPessoas();
		List<Pessoa> result = new ArrayList<Pessoa>();

		if (null != filtro.getNome() && !"".equals(filtro.getNome())) {
			for (Pessoa p : pessoas) {
				if (p.getNome().equalsIgnoreCase(filtro.getNome())) {
					result.add(p);
				}
			}
		} else {
			result = todasPessoas();
		}
		return result;
	}

	private List<Pessoa> todasPessoas() {
		List<Pessoa> lista = new ArrayList<Pessoa>();
		lista.add(new Pessoa("Anderson", "05029553339", new Date(), "a@a.com"));
		lista.add(new Pessoa("Rebeka", "05025979631", new Date(), "r@r.com"));
		lista.add(new Pessoa("John", "78954632154", new Date(), "j@j.com"));
		lista.add(new Pessoa("Charles", "45679852163", new Date(), "c@c.com"));
		lista.add(new Pessoa("Tiago", "78965478123", new Date(), "t@t.com"));
		lista.add(new Pessoa("Carol", "78532145698", new Date(), "c@c.com"));
		return lista;
	}

}
