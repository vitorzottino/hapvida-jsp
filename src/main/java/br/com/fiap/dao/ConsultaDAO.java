package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.model.Consulta;

public class ConsultaDAO {

	private Connection con;

	public ConsultaDAO(Connection con) {
		new ConnectionFactory();
		this.con = ConnectionFactory.conectar();
	}

	public void inserirConsulta(Consulta consulta) {

		try {
			String sql = "INSERT INTO CONSULTA (id_especialidade, id_usuario, data, horario) values(?,?,?,?)";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, consulta.getIdEspecialidade());
			stmt.setInt(2, consulta.getIdPaciente());
			stmt.setDate(3, new java.sql.Date(consulta.getData().getTime()));
			stmt.setString(4, consulta.getHorario());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public List<Consulta> listarConsultasUsuario(int id) {
		List<Consulta> consultas = new ArrayList<Consulta>();
		String sql = "select c.id, u.nome, u.email, e.descricao as especialidade, c.data, c.horario"
				+ " from consulta c" + " join especialidades e on e.id = c.id_especialidade"
				+ " join usuarios u on u.id = c.id_usuario where id_usuario=?";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Consulta consulta = new Consulta();
				consulta.setId(rs.getInt(1));
				consulta.setNomePaciente(rs.getString(2));
				consulta.setEmailPaciente(rs.getString(3));
				consulta.setEspecialidade(rs.getString(4));
				java.sql.Date dataSQL = rs.getDate(5);
				java.util.Date dataJava = new java.util.Date(dataSQL.getTime());
				consulta.setData(dataJava);
				consulta.setHorario(rs.getString(6));
				consultas.add(consulta);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return consultas;
	}

	public List<Consulta> listarConsultasEspecialidade(int id) {
		List<Consulta> consultas = new ArrayList<>();
		String sql = "select c.id, u.nome, u.email, e.descricao as especialidade, c.data, c.horario"
				+ " from consulta c" + " join especialidades e on e.id = c.id_especialidade"
				+ " join usuarios u on u.id = c.id_usuario where c.id_especialidade=? AND c.data >= sysdate";
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Consulta consulta = new Consulta();
				consulta.setId(rs.getInt(1));
				consulta.setNomePaciente(rs.getString(2));
				consulta.setEmailPaciente(rs.getString(3));
				consulta.setEspecialidade(rs.getString(4));
				java.sql.Date dataSQL = rs.getDate(5);
				java.util.Date dataJava = new java.util.Date(dataSQL.getTime());
				consulta.setData(dataJava);
				consulta.setHorario(rs.getString(6));
				consultas.add(consulta);

			}
			this.con.close();
			rs.close();
			stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return consultas;
	}

}
