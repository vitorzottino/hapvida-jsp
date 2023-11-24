<%@page import="br.com.fiap.connection.ConnectionFactory"%>
<%@page import="br.com.fiap.dao.DadosBiometricosDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="includes/userauth.jsp"%>
<%
List<DadosBiometricos> dados = null;
dados = new DadosBiometricosDAO(ConnectionFactory.conectar()).listarDadosBiometricosUsuario(user.getId());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
<title>Dados Biométricos</title>
</head>
<body>
	<header class="border-b">
		<nav class="flex flex-row justify-between p-3 mx-[25%] items-center">
			<div class="flex flex-row items-center gap-4">
				<a href="index.jsp"><img class="w-[40px]"
					src="assets/logo-hapvida-escudo-2048.png" alt=""></a> <a
					href="index.jsp"><p class="italic text-blue-700 font-bold">Hapvida</p></a>
			</div>

			<ul class="flex flex-row gap-4">
				<li
					class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
					<a href="autoatendimento.jsp">Autoatendimento</a>
				</li>
				<li
					class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
					<a href="rating.jsp">Avaliar tecnologias</a>
				</li>
				<li
					class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
					<a href="visualizardados.jsp">Visualizar Dados Biometricos</a>
				</li>
				<li
					class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
					<a href="agendamento.jsp">Agendar Exame</a>
				</li>
			</ul>
		</nav>
	</header>
	<div class="flex flex-col justify-center items-center">
		<div
			class="flex mt-[2%] justify-center items-center gap-8 flex-col rounded-lg shadow-lg border p-6 w-[88%]">
			<h1 class="text-2xl font-semibold italic">Olá ${user.getNome() }</h1>
			<h2 class="text-2xl font-semibold italic">Esse é o seu histórico
				de Dados Biometricos</h2>
		</div>
		<div
			class="flex justify-center items-center mt-[2%] rounded-lg border shadow-lg w-[88%] relative  overflow-x-auto">
			<table class="w-full">
				<thead class="bg-orange-400 w-full text-white">
					<tr>
						<th class="px-6 py-3" scope="col">Tipo Sanguineo</th>
						<th class="px-6 py-3" scope="col">Altura</th>
						<th class="px-6 py-3" scope="col">Peso</th>
						<th class="px-6 py-3" scope="col">Oxigenação</th>
						<th class="px-6 py-3" scope="col">Pressão</th>
						<th class="px-6 py-3" scope="col">Data(AAAA-MM-DD)</th>
					</tr>
				</thead>
				<tbody>
					<%
					if (dados != null) {
						for (DadosBiometricos db : dados) {
					%>
					<tr class="border-b-orange-200 border-b">
						<td><%=db.getTipoSangue()%></td>
						<td><%=db.getAltura()%>cm</td>
						<td><%=db.getPeso()%>Kg</td>
						<td><%=db.getOxigenacao()%></td>
						<td><%=db.getPressao()%></td>
						<td><%=db.getData()%></td>
					</tr>
					<%
					}
					}
					%>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>