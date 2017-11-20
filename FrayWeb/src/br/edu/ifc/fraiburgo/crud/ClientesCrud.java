package br.edu.ifc.fraiburgo.crud;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.edu.ifc.fraiburgo.entidades.Clientes;

public class ClientesCrud {

	public void inserir(Clientes clientes) {
		Conexao conexao = new Conexao();
		conexao.gerarConexao();
		
		PreparedStatement instrucao = null;
		String sql = "INSERT INTO clientes(nome, email, senha)"
				+ "VALUES(?, ?, ?)";
		
		try {
			instrucao = conexao.connection.prepareStatement(sql);
			instrucao.setString(1, clientes.getNome());
			instrucao.setString(2, clientes.getEmail());
			instrucao.setString(3, clientes.getSenha());
			instrucao.execute();
			System.out.println("Cliente inserido com sucesso!");
		} catch(Exception e) {
			System.out.println("Erro ao inserir!" + e.getMessage());
		} finally {
			try {
				instrucao.close();
				conexao.fechar();
			} catch(Exception e) {
				System.out.println("Erro ao fechar!" + e.getMessage());
			}
		}				
	}
	
	public boolean logar(Clientes c) throws SQLException {
		Conexao conexao = new Conexao();
		conexao.gerarConexao();
		
		PreparedStatement instrucao = null;
		String sql = "select * from clientes where email = ? and senha = ? limit 1";
		instrucao = conexao.connection.prepareStatement(sql);
		instrucao.setString(1, c.getEmail());
		instrucao.setString(2, c.getSenha());
		
		ResultSet resultado = instrucao.executeQuery();
		
		if (resultado.next()) {
			return true;
		}
		return false;
		
	
	}
}
