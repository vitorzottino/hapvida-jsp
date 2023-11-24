package br.com.fiap.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.AvaliacaoDAO;
import br.com.fiap.model.Avaliacao;

@WebServlet("/avaliar")
public class AvaliarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AvaliarServlet() {
 
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idEspecialidade = Integer.parseInt(request.getParameter("especialidade"));
		int nota = Integer.parseInt(request.getParameter("nota"));
		
		Avaliacao ava = new Avaliacao();
		ava.setIdEspecialidade(idEspecialidade);
		ava.setNota(nota);
		AvaliacaoDAO dao = new AvaliacaoDAO(ConnectionFactory.conectar());
		dao.inserirAvaliacao(ava);
		response.sendRedirect("pacientedashboard.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
