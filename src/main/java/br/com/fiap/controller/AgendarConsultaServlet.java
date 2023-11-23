package br.com.fiap.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.connection.ConnectionFactory;
import br.com.fiap.dao.ConsultaDAO;
import br.com.fiap.model.Consulta;
import br.com.fiap.model.Usuario;

@WebServlet("/agendar")
public class AgendarConsultaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AgendarConsultaServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Usuario user = (Usuario) request.getSession().getAttribute("user");
		if (user != null) {

			int idEspecialidade = Integer.parseInt(request.getParameter("especialidade"));
			String time = (String) request.getParameter("time");
			String dataStr = (String) request.getParameter("data");
			Date data = null;
			try {
				if (dataStr != null && !dataStr.isEmpty()) {
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					  java.util.Date utilDate = sdf.parse(dataStr);
					  data = new java.sql.Date(utilDate.getTime());
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

			try {
				Consulta consulta = new Consulta();
				consulta.setIdEspecialidade(idEspecialidade);
				consulta.setHorario(time);
				consulta.setData(data);
				consulta.setIdPaciente(user.getId());
				ConsultaDAO dao = new ConsultaDAO(ConnectionFactory.conectar());
				dao.inserirConsulta(consulta);
				response.sendRedirect("pacientedashboard.jsp");

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			response.sendRedirect("pacientelogin.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
