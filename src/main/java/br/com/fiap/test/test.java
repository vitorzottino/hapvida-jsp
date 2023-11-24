package br.com.fiap.test;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.SugestaoDAO;

public class test {
	public static void main(String[] args) {

		SugestaoDAO dao = new SugestaoDAO(ConnectionFactory.conectar());

		System.out.println(dao.getSugestao(2));

	}

}
