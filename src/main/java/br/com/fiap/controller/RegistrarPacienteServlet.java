package br.com.fiap.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.UsuarioDAO;
import br.com.fiap.model.Usuario;

@WebServlet("/registrar")
public class RegistrarPacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegistrarPacienteServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Usuario usuario = new Usuario();
		UsuarioDAO dao = new UsuarioDAO(ConnectionFactory.conectar());

		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setNome(request.getParameter("nome"));
		usuario.setCpf(request.getParameter("CPF"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setIdade(Integer.parseInt(request.getParameter("idade")));
		if (dao.inserirUsuario(usuario)) {
			response.sendRedirect("pacientelogin.jsp");
		}else {
			response.sendRedirect("pacienteregistro.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
