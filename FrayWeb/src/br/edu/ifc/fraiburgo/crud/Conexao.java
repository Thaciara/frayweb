package br.edu.ifc.fraiburgo.crud;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	public Connection connection = null;
	private final String NOMEBD = "clientes";
	private final String URL = "jdbc:mysql://localhost:3306/" + NOMEBD;
	private final String USUARIO = "root";
	private final String SENHA = "";
	
	public boolean gerarConexao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USUARIO, SENHA);
			System.out.println("Conectou!");
			return true;
		} catch(Exception e) {
			System.out.println("Erro ao conectar!" + e.getMessage());
			return false;
		}
	}
	
	public void fechar(){
		try {
			connection.close();
			System.out.println("Fechou conex�o!");
		} catch(Exception e) {
			System.out.println("Erro ao fechar!" + e.getMessage());
		}
	}

}
