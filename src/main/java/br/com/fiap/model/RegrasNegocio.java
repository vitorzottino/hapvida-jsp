package br.com.fiap.model;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.UsuarioDAO;

public class RegrasNegocio {
	
	
	
	
	//Criar uma tabela de SUGESTOES e o retorno deste metodo SERA O ID DE UMA SUGESTAO;
	public int analisarPesquisa(Pesquisa pesquisa) {
		
		int C1 = pesquisa.idEspecialidade;
		UsuarioDAO dao = new UsuarioDAO(ConnectionFactory.conectar());
		Usuario user = dao.userID(pesquisa.getIdUsuario());
		int C2 = user.getIdade();
		int C3 = pesquisa.p1;
		int C4 = pesquisa.p2;
		int C5 = pesquisa.p3;
		int C6 = pesquisa.p4;
		int C7 = pesquisa.p5;
		
		switch(C1) {
		case 1:
			//CASO FOR ORTOPEDIA
			if(C2 > 60) {
				//PACIENTE IDOSO
				 
			}
			
			break;
		case 2:
			//CASO FOR CARDIOLOGIA
			break;
		case 3:
			//CASO FOR GASTRO
			break;
			
		}
		
	
	
	return 1;
	}
	

}
