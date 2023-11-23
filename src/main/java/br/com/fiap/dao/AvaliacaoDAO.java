package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.model.Avaliacao;
import br.com.fiap.model.Consulta;

public class AvaliacaoDAO {
	private Connection con;

	public AvaliacaoDAO(Connection con) {
		new ConnectionFactory();
		this.con = ConnectionFactory.conectar();
	}

	public void inserirAvaliacao(Avaliacao avaliacao) {

		try {
			String sql = "INSERT INTO AVALIACAO VALUES (?,?)";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, avaliacao.getIdEspecialidade());
			stmt.setInt(2, avaliacao.getNota());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public double mediaEspecialidade(int id) {
		double media = 0;
		try {
			String sql = "select avg(nota) from avaliacao where id_especialidade=?";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				media = rs.getDouble(1);
			}
			
		
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return media;

	}

}
