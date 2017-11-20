package br.edu.ifc.fraiburgo.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifc.fraiburgo.crud.ClientesCrud;
import br.edu.ifc.fraiburgo.entidades.Clientes;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
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
		
		try {
			resposta.setCharacterEncoding("utf-8");
			requisicao.setCharacterEncoding("utf-8");
			
	
			String email = requisicao.getParameter("email");
			String senha = requisicao.getParameter("senha");
			
			Clientes c1 = new Clientes();
			c1.setEmail(email);
			c1.setSenha(senha);
			
			ClientesCrud cc = new ClientesCrud();
			//cc.inserir(c1);
			
			boolean logado = cc.logar(c1);
			
			if (logado) {
				requisicao.getSession().setAttribute("usuarioLogado", logado);
			} else {
				requisicao.getSession().invalidate();
			}
		
			requisicao.getRequestDispatcher("/index.jsp").forward(requisicao, resposta);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}