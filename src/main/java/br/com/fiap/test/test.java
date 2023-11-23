package br.com.fiap.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.AvaliacaoDAO;
import br.com.fiap.dao.ConsultaDAO;
import br.com.fiap.dao.DadosBiometricosDAO;
import br.com.fiap.dao.PesquisaDAO;
import br.com.fiap.model.Consulta;
import br.com.fiap.model.DadosBiometricos;
import br.com.fiap.model.Pesquisa;

public class test {
	public static void main(String[] args) {

		PesquisaDAO dao = new PesquisaDAO(ConnectionFactory.conectar());

		System.out.println(dao.listarPesquisasId(41).toString());

	}

}
