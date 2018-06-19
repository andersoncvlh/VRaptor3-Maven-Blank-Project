package br.com.javacoder.moneymanagement.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;

@Resource
public class IndexController {
	
	@Get
	@Path("/")
	public void index() {
	}
}
