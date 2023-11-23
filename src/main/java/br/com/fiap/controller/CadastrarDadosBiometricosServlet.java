package br.com.fiap.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.DadosBiometricosDAO;
import br.com.fiap.model.DadosBiometricos;
import br.com.fiap.model.Usuario;


@WebServlet("/cadastrar-dados")
public class CadastrarDadosBiometricosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idPaciente = Integer.parseInt(request.getParameter("id"));
		String tipoSangue = request.getParameter("tipoSangue");
		String altura = request.getParameter("altura");
		String oxigenacao = request.getParameter("oxigenacao");
		String pressao = request.getParameter("pressao");
		String peso = request.getParameter("peso");
		
		DadosBiometricos db = new DadosBiometricos();
		db.setIdUsuario(idPaciente);
		db.setTipoSangue(tipoSangue);
		db.setAltura(altura);
		db.setOxigenacao(oxigenacao);
		db.setPressao(pressao);
		db.setPeso(peso);
		DadosBiometricosDAO dao = new DadosBiometricosDAO(ConnectionFactory.conectar());
		
		
		
		Usuario user = (Usuario) request.getSession().getAttribute("user");
		if(user!= null && user.getTipo() != 0){
			if(!dao.inserirDadosBiometricos(db)) {
				response.sendRedirect("cadastrardados.jsp");
			}
			response.sendRedirect("medicodashboard.jsp");
			
		}else {
			response.sendRedirect("index.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
