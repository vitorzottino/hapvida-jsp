package br.com.fiap.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.UsuarioDAO;
import br.com.fiap.model.Usuario;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Usuario user = (Usuario) request.getSession().getAttribute("user");
		if (user == null) {
			try (PrintWriter out = response.getWriter()) {
				String email = request.getParameter("email");
				String senha = request.getParameter("senha");
				

				try {
					UsuarioDAO dao = new UsuarioDAO(ConnectionFactory.conectar());
					Usuario usuario = dao.userLogin(email, senha);

					if (usuario != null) {
						request.getSession().setAttribute("user", usuario);
						if (usuario.getTipo() == 0) {
							response.sendRedirect("pacientedashboard.jsp");
						} else {
							response.sendRedirect("medicodashboard.jsp");
						}

					} else {
						response.sendRedirect("pacientelogin.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}
	}

}
