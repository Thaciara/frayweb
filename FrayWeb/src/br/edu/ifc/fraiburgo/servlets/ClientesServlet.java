package br.edu.ifc.fraiburgo.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifc.fraiburgo.crud.ClientesCrud;
import br.edu.ifc.fraiburgo.entidades.Clientes;

@WebServlet("/clientes")
public class ClientesServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service(req, resp);
	}

	protected void service(HttpServletRequest requisicao,
			HttpServletResponse resposta)
			throws ServletException, IOException {
		
		resposta.setCharacterEncoding("utf-8");
		requisicao.setCharacterEncoding("utf-8");
		

		String nome = requisicao.getParameter("nome");
		String email = requisicao.getParameter("email");
		String senha = requisicao.getParameter("senha");
		String repitasenha = requisicao.getParameter("repitasenha");

		Clientes c1 = new Clientes();
		c1.setNome(nome);
		c1.setEmail(email);
		c1.setSenha(senha);
		c1.setRepitasenha(repitasenha);
		
		ClientesCrud cc = new ClientesCrud();
		cc.inserir(c1);
		
		requisicao.getRequestDispatcher("/clientes.jsp").forward(requisicao, resposta);
		
	}
}