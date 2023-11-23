package br.com.fiap.dao;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.model.Pesquisa;

@WebServlet("/ver-resultados")
public class VerResultadosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pergunta1 = null, pergunta2 = null, pergunta3 = null, pergunta4 = null, pergunta5 = null;
		String resposta1 = null, resposta2 = null, resposta3 = null, resposta4 = null, resposta5 = null;
		String especialidade = null;

		int id = Integer.parseInt(request.getParameter("id"));
		Pesquisa pesquisa = new PesquisaDAO(ConnectionFactory.conectar()).listarPesquisasId(id);
		System.out.println(pesquisa.getIdEspecialidade());
		switch (pesquisa.getIdEspecialidade()) {
		case 1:// Ortopedista
			especialidade = "Ortopedista";
			pergunta1 = "Você se envolveu em algum acidente?";
			pergunta2 = "Em uma escala de 1 a 5 qual a sua dor na região?";
			pergunta3 = "Você sente dor em algum região do corpo?";
			pergunta4 = "Você consegue movimentar a região lesionada?";
			pergunta5 = "Em uma escala de 1 a 5 qual a limitação do seu movimento?";

			if (pesquisa.getP1() == 0) {
				resposta1 = "Não";
			} else {
				resposta1 = "Sim";
			}
			resposta2 = String.valueOf(pesquisa.getP2());
			if (pesquisa.getP3() == 0) {
				resposta3 = "Não";
			} else {
				resposta3 = "Sim";
			}
			if (pesquisa.getP4() == 0) {
				resposta4 = "Não";
			} else {
				resposta4 = "Sim";
			}
			resposta5 = String.valueOf(pesquisa.getP5());
			break;
		case 2:// Cardiologista
			especialidade = "Cardiologista";
			pergunta1 = "Dor intensa no peito, tipo queimação ou aperto";
			pergunta2 = "Dor que pode irradiar para os braços ou para a mandíbula?";
			pergunta3 = "Dor que dura por mais de 15 minutos sem melhorar?";
			pergunta4 = "Sensação de falta de ar?";
			pergunta5 = "Náuseas e vômitos?";

			if (pesquisa.getP1() == 0) {
				resposta1 = "Não";
			} else {
				resposta1 = "Sim";
			}
			if (pesquisa.getP2() == 0) {
				resposta2 = "Não";
			} else {
				resposta2 = "Sim";
			}
			if (pesquisa.getP3() == 0) {
				resposta3 = "Não";
			} else {
				resposta3 = "Sim";
			}
			if (pesquisa.getP4() == 0) {
				resposta4 = "Não";
			} else {
				resposta4 = "Sim";
			}
			if (pesquisa.getP5() == 0) {
				resposta5 = "Não";
			} else {
				resposta5 = "Sim";
			}

			break;
		case 3:// Neurologista
			especialidade = "Neurologista";
			pergunta1 = "Você consegue sorrir normalmente?";
			pergunta2 = "Consegue levantar ambos os braços normalmente?";
			pergunta3 = "Está conseguindo se comunicar normalmente?";
			pergunta4 = "Consegue enxergar normalmente?";
			pergunta5 = "Está sentindo dores de cabeça fortes e persistentes?";
			
			if (pesquisa.getP1() == 0) {
				resposta1 = "Não";
			} else {
				resposta1 = "Sim";
			}
			if (pesquisa.getP2() == 0) {
				resposta2 = "Não";
			} else {
				resposta2 = "Sim";
			}
			if (pesquisa.getP3() == 0) {
				resposta3 = "Não";
			} else {
				resposta3 = "Sim";
			}
			if (pesquisa.getP4() == 0) {
				resposta4 = "Não";
			} else {
				resposta4 = "Sim";
			}
			if (pesquisa.getP5() == 0) {
				resposta5 = "Não";
			} else {
				resposta5 = "Sim";
			}

			break;
		}

		request.setAttribute("especialidade", especialidade);
		request.setAttribute("pergunta1", pergunta1);
		request.setAttribute("pergunta2", pergunta2);
		request.setAttribute("pergunta3", pergunta3);
		request.setAttribute("pergunta4", pergunta4);
		request.setAttribute("pergunta5", pergunta5);

		request.setAttribute("resposta1", resposta1);
		request.setAttribute("resposta2", resposta2);
		request.setAttribute("resposta3", resposta3);
		request.setAttribute("resposta4", resposta4);
		request.setAttribute("resposta5", resposta5);
		request.setAttribute("id", id);

		RequestDispatcher dispatcher = request.getRequestDispatcher("visualizarautoatendimento.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
