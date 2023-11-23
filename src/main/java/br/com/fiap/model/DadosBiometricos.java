package br.com.fiap.model;

import java.util.Date;

public class DadosBiometricos {

	private String tipoSangue;
	private String altura;
	private String peso;
	private String oxigenacao;
	private String pressao;
	private int idUsuario;
	private Date data;

	public DadosBiometricos() {
		super();
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getTipoSangue() {
		return tipoSangue;
	}

	public void setTipoSangue(String tipoSangue) {
		this.tipoSangue = tipoSangue;
	}

	public String getAltura() {
		return altura;
	}

	public void setAltura(String altura) {
		this.altura = altura;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public String getOxigenacao() {
		return oxigenacao;
	}

	public void setOxigenacao(String oxigenacao) {
		this.oxigenacao = oxigenacao;
	}

	public String getPressao() {
		return pressao;
	}

	public void setPressao(String pressao) {
		this.pressao = pressao;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "DadosBiometricos [tipoSangue=" + tipoSangue + ", altura=" + altura + ", peso=" + peso + ", oxigenacao="
				+ oxigenacao + ", pressao=" + pressao + ", idUsuario=" + idUsuario + ", data=" + data + "]";
	}
	
	
}
