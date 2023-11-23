package br.com.fiap.model;

public class Pesquisa {
	
	int id;
	int idUsuario;
	int p1, p2, p3, p4, p5;
	int idEspecialidade;
	int status = 0;
	
	public Pesquisa() {
	
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int id_usuario) {
		this.idUsuario = id_usuario;
	}
	public int getP1() {
		return p1;
	}
	public void setP1(int p1) {
		this.p1 = p1;
	}
	public int getP2() {
		return p2;
	}
	public void setP2(int p2) {
		this.p2 = p2;
	}
	public int getP3() {
		return p3;
	}
	public void setP3(int p3) {
		this.p3 = p3;
	}
	public int getP4() {
		return p4;
	}
	public void setP4(int p4) {
		this.p4 = p4;
	}
	public int getP5() {
		return p5;
	}
	public void setP5(int p5) {
		this.p5 = p5;
	}
	public int getIdEspecialidade() {
		return idEspecialidade;
	}
	public void setIdEspecialidade(int id_especialidade) {
		this.idEspecialidade = id_especialidade;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Pesquisa [id=" + id + ", idUsuario=" + idUsuario + ", p1=" + p1 + ", p2=" + p2 + ", p3=" + p3
				+ ", p4=" + p4 + ", p5=" + p5 + ", idEspecialidade=" + idEspecialidade + ", status=" + status + "]";
	}
	
	
	

}
