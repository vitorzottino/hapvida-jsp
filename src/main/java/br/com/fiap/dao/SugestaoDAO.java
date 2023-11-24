package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.fiap.connection.ConnectionFactory;

public class SugestaoDAO {
	
	private Connection con;

	public SugestaoDAO(Connection con) {
		new ConnectionFactory();
		this.con = ConnectionFactory.conectar();
	}
	
	public String getSugestao(int id) {
		String sugestao = null;
		String sql = "select descricao from sugestao where id=?";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				sugestao = rs.getString(1);
				
				
			}
			rs.close();
			stmt.close();
			this.con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sugestao;
	}

}
