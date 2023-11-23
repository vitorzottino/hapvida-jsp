package br.com.fiap.model;

import java.util.Date;

public class Consulta {

	private int id;
	private String especialidade;
	private int idEspecialidade;
	private int idPaciente;
	private String nomePaciente;
	private String emailPaciente;
	private Date data;
	private String horario;

	public Consulta() {

	}

	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}

	public String getEmailPaciente() {
		return emailPaciente;
	}

	public void setEmailPaciente(String emailPaciente) {
		this.emailPaciente = emailPaciente;
	}

	public int getIdEspecialidade() {
		return idEspecialidade;
	}

	public void setIdEspecialidade(int idEspecialidade) {
		this.idEspecialidade = idEspecialidade;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEspecialidade() {
		return especialidade;
	}

	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}

	public String getNomePaciente() {
		return nomePaciente;
	}

	public void setNomePaciente(String nome) {
		this.nomePaciente = nome;
	}

	
	public Date getData() {
		return data;
	}

	public void setData(java.util.Date data) {
		if (data != null) {
	        this.data = new java.sql.Date(data.getTime());
	    } else {
	        this.data = null; 
	    }
	}
	
	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	@Override
	public String toString() {
		return "Consulta [id=" + id + ", especialidade=" + especialidade + ", nomePaciente=" + nomePaciente
				+ ", emailPaciente=" + emailPaciente + ", data=" + data + ", horario=" + horario + "]";
	}
	
	

}
