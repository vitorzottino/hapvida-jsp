package br.com.fiap.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.PesquisaDAO;
import br.com.fiap.model.Pesquisa;
import br.com.fiap.model.Usuario;


@WebServlet("/receber-respostas")
public class ReceberRespostasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ReceberRespostasServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Usuario user = (Usuario) request.getSession().getAttribute("user");
		if(user!= null) {
		Pesquisa pesquisa = new Pesquisa();
		pesquisa.setIdEspecialidade(Integer.parseInt(request.getParameter("especialidade")));
		pesquisa.setIdUsuario(user.getId());
		pesquisa.setP1(Integer.parseInt(request.getParameter("p1")));
		pesquisa.setP2(Integer.parseInt(request.getParameter("p2")));
		pesquisa.setP3(Integer.parseInt(request.getParameter("p3")));
		pesquisa.setP4(Integer.parseInt(request.getParameter("p4")));
		pesquisa.setP5(Integer.parseInt(request.getParameter("p5")));
		PesquisaDAO dao = new PesquisaDAO(ConnectionFactory.conectar());
		dao.inserirPesquisa(pesquisa);
		response.sendRedirect("pacientedashboard.jsp");
		}else {
			response.sendRedirect("pacientelogin.jsp");
		}
	
		
	}

}
