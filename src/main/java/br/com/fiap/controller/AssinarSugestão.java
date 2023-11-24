package br.com.fiap.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.PesquisaDAO;


@WebServlet("/assinar-sugestao")
public class AssinarSugestão extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		int status = Integer.parseInt(request.getParameter("status"));
		PesquisaDAO dao = new PesquisaDAO(ConnectionFactory.conectar());
		
		
		if(status == 1) {
			dao.assinarPesquisa(id);
			
		}else {
			dao.deletarPesquisa(id);
			
		}
		
		response.sendRedirect("medicodashboard.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
