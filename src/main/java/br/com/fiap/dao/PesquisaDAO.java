package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.model.Pesquisa;

public class PesquisaDAO {

	private Connection con;

	public PesquisaDAO(Connection con) {
		new ConnectionFactory();
		this.con = ConnectionFactory.conectar();
	}

	public void inserirPesquisa(Pesquisa pequisa) {

		try {
			String sql = "INSERT INTO PESQUISA (id_usuario, p1, p2, p3, p4, p5, id_especialidade, status, data) values(?,?,?,?,?,?,?,?, sysdate) ";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, pequisa.getIdUsuario());
			stmt.setInt(2, pequisa.getP1());
			stmt.setInt(3, pequisa.getP2());
			stmt.setInt(4, pequisa.getP3());
			stmt.setInt(5, pequisa.getP4());
			stmt.setInt(6, pequisa.getP5());
			stmt.setInt(7, pequisa.getIdEspecialidade());
			stmt.setInt(8, pequisa.getStatus());
			stmt.execute();
			stmt.close();
			this.con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public List<Pesquisa> listarPesquisasUsuario(int id) {
		List<Pesquisa> pesquisas = new ArrayList<Pesquisa>();
		String sql = "select * from pesquisa where id_usuario=?";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Pesquisa pesquisa = new Pesquisa();
				pesquisa.setId(rs.getInt("id"));
				pesquisa.setIdUsuario(rs.getInt("id_usuario"));
				pesquisa.setP1(rs.getInt("p1"));
				pesquisa.setP2(rs.getInt("p2"));
				pesquisa.setP3(rs.getInt("p3"));
				pesquisa.setP4(rs.getInt("p4"));
				pesquisa.setP5(rs.getInt("p5"));
				pesquisa.setIdEspecialidade(rs.getInt("id_especialidade"));
				pesquisa.setStatus(rs.getInt("status"));
				pesquisas.add(pesquisa);
				
				
			}
			rs.close();
			stmt.close();
			this.con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pesquisas;
	}

	public List<Pesquisa> listarPesquisasEspecialidade(int id) {
		List<Pesquisa> pesquisas = new ArrayList<Pesquisa>();
		String sql = "select * from pesquisa where id_especialidade=? and status=0";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Pesquisa pesquisa = new Pesquisa();
				pesquisa.setId(rs.getInt("id"));
				pesquisa.setIdUsuario(rs.getInt("id_usuario"));
				pesquisa.setP1(rs.getInt("p1"));
				pesquisa.setP2(rs.getInt("p2"));
				pesquisa.setP3(rs.getInt("p3"));
				pesquisa.setP4(rs.getInt("p4"));
				pesquisa.setP5(rs.getInt("p5"));
				pesquisa.setIdEspecialidade(rs.getInt("id_especialidade"));
				pesquisa.setStatus(rs.getInt("status"));
				pesquisas.add(pesquisa);
				
				
				
			}
			this.con.close();
			rs.close();
			stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pesquisas;
	}
	
	
	public int contarPesquisasEspecialidade(int id) {
		int count = 0;
		String sql = "select count(*) as total from pesquisa where id_especialidade=?";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				count = rs.getInt("total");
				
				
			}
			
			stmt.close();
			rs.close();
			this.con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	
	public Pesquisa listarPesquisasId(int id) {
		Pesquisa pesquisa = null;
		String sql = "select * from pesquisa where id=?";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				pesquisa = new Pesquisa();
				pesquisa.setId(rs.getInt("id"));
				pesquisa.setIdUsuario(rs.getInt("id_usuario"));
				pesquisa.setP1(rs.getInt("p1"));
				pesquisa.setP2(rs.getInt("p2"));
				pesquisa.setP3(rs.getInt("p3"));
				pesquisa.setP4(rs.getInt("p4"));
				pesquisa.setP5(rs.getInt("p5"));
				pesquisa.setIdEspecialidade(rs.getInt("id_especialidade"));
				pesquisa.setStatus(rs.getInt("status"));
				
				
				
			}
			rs.close();
			stmt.close();
			this.con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pesquisa;
	}
	
	public void assinarPesquisa(int id) {

		try {
			String sql = "UPDATE pesquisa SET status 1 WHERE id=?";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.execute();
			stmt.close();
			

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public void deletarPesquisa(int id) {
		try {
			String sql = "DELETE FROM pesquisa WHERE id=?";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.execute();
			stmt.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
