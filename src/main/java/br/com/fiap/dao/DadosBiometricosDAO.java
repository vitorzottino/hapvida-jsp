package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.model.Consulta;
import br.com.fiap.model.DadosBiometricos;

public class DadosBiometricosDAO {
	
	private Connection con;

	public DadosBiometricosDAO(Connection con) {
		new ConnectionFactory();
		this.con = ConnectionFactory.conectar();
	}
	
	public boolean inserirDadosBiometricos(DadosBiometricos dados) {
		boolean sucesso = false;
		try {
			String sql = "INSERT INTO DADOS_BIOMETRICOS (id_usuario, tipo_sangue, altura, peso, oxigenacao, pressao, data) values(?,?,?,?,?,?,sysdate)";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, dados.getIdUsuario());
			stmt.setString(2, dados.getTipoSangue());
			stmt.setString(3, dados.getAltura());
			stmt.setString(4, dados.getPeso());
			stmt.setString(5, dados.getOxigenacao());
			stmt.setString(6, dados.getPressao());
			stmt.execute();
			stmt.close();
			sucesso = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sucesso;

	}
	
	public List<DadosBiometricos> listarDadosBiometricosUsuario(int id) {
		List<DadosBiometricos> dados = new ArrayList<>();
		String sql = "SELECT tipo_sangue, altura, peso, oxigenacao, pressao, data from DADOS_BIOMETRICOS WHERE id_usuario=?";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				DadosBiometricos dadosBio = new DadosBiometricos();
				dadosBio.setTipoSangue(rs.getString(1));
				dadosBio.setAltura(rs.getString(2));
				dadosBio.setPeso(rs.getString(3));
				dadosBio.setOxigenacao(rs.getString(4));
				dadosBio.setPressao(rs.getString(5));
				java.sql.Date dataSQL = rs.getDate(6);
				java.util.Date dataJava = new java.util.Date(dataSQL.getTime());
				dadosBio.setData(dataJava);
				dados.add(dadosBio);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dados;
	}
	

}
