package br.com.fiap.model;

public class RegrasNegocio {

	// Criar uma tabela de SUGESTOES e o retorno deste metodo SERA O ID DE UMA
	// SUGESTAO;
	public int analisarPesquisa(Pesquisa pesquisa) {

		int C1 = pesquisa.idEspecialidade;
		// UsuarioDAO dao = new UsuarioDAO(ConnectionFactory.conectar());
		// Usuario user = dao.userID(pesquisa.getIdUsuario());
		// int C2 = user.getIdade();
		int C3 = pesquisa.p1;
		int C4 = pesquisa.p2;
		int C5 = pesquisa.p3;
		int C6 = pesquisa.p4;
		int C7 = pesquisa.p5;
		int retorno = 0;

		if (C1 == 1 && C3 == 1 && C4 >= 3 && C5 == 0 && C6 == 0 && C7 >= 4) {
			retorno = 1;

		}
		if (C1 == 1 && C3 == 0 && C4 == 2 && C5 == 0 && C6 == 1 && C7 == 1) {
			retorno = 2;
		}
		
		return retorno;
	}

}
