package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.fiap.model.Usuario;

public class UsuarioDAO {

	private Connection con;
	private String query;
	private PreparedStatement stmt;
	private ResultSet rs;

	public UsuarioDAO(Connection con) {
		this.con = con;
	}

	public Usuario userLogin(String email, String senha) {
		Usuario user = null;
		try {
			query = "SELECT * FROM usuarios WHERE email = ? AND senha=?";
			stmt = this.con.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, senha);
			rs = stmt.executeQuery();

			if (rs.next()) {
				user = new Usuario();
				user.setId(rs.getInt("id"));
				user.setNome(rs.getString("nome"));
				user.setEmail(rs.getString("email"));
				user.setCpf(rs.getString("cpf"));
				user.setTipo(rs.getInt("tipo"));
			}
			rs.close();
			stmt.close();
			this.con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}

		return user;
	}

	public Usuario userID(int id) {
		Usuario user = null;
		query = "SELECT * FROM usuarios WHERE id = ?";

		try {
			stmt = this.con.prepareStatement(query);
			stmt.setInt(1, id);
			user = new Usuario();
			user.setId(rs.getInt("id"));
			user.setNome(rs.getString("nome"));
			user.setEmail(rs.getString("email"));
			user.setCpf(rs.getString("cpf"));
			user.setTipo(rs.getInt("tipo"));
			this.con.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return user;

	}
	
	
	public boolean inserirUsuario(Usuario usuario) {
		boolean inserido = false;
		query = "INSERT INTO usuarios (nome, email, senha, cpf, idade, tipo) values (?, ?, ?, ?, ?, 0)";
		try {
			stmt = this.con.prepareStatement(query);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getCpf());
			stmt.setInt(5, usuario.getIdade());
			stmt.execute();
			stmt.close();

			this.con.close();
			inserido = true;
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return inserido;
	}
}