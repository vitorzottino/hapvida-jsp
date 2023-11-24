<%@page import="br.com.fiap.connection.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="br.com.fiap.dao.*"%>
<%@page import="br.com.fiap.model.*"%>
<%@page import="java.util.List"%>
<%
List<Pesquisa> pesquisas = null;
List<Consulta> consultas = null;
double media = 0;
Usuario user = (Usuario) request.getSession().getAttribute("user");
if (user != null) {
	request.setAttribute("user", user);
	pesquisas = new PesquisaDAO(ConnectionFactory.conectar()).listarPesquisasEspecialidade(user.getTipo());
	consultas = new ConsultaDAO(ConnectionFactory.conectar()).listarConsultasEspecialidade(user.getTipo());
	media = new AvaliacaoDAO(ConnectionFactory.conectar()).mediaEspecialidade(user.getTipo());
} else {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
<title>Dashboard Medico</title>
</head>
<body>
	<header class="border-b">
		<nav class="flex flex-row justify-between p-3 mx-[25%] items-center">
			<div class="flex flex-row items-center gap-4">
				<a href="index.jsp"><img class="w-[40px]"
					src="assets/logo-hapvida-escudo-2048.png" alt=""></a> <a
					href="index.jsp"><p class="italic text-blue-700 font-bold">Hapvida</p></a>
			</div>

		</nav>
	</header>
	<div class="flex flex-col justify-center items-center">
		<div
			class="flex mt-[2%]  justify-center items-center gap-8 flex-col rounded-md border p-6 w-[88%]">
			<h1 class="text-2xl font-semibold italic">Portal ${ user.getNome()}
			</h1>
			<h1 class="text-2xl font-semibold italic">
				Média Avaliação
				<%=media%>
			</h1>
		</div>
		<div
			class="flex mt-[2%]  justify-center items-center gap-8 flex-col rounded-md border p-6 w-[88%]">
			<h1 class="text-2xl font-semibold italic">
				Assinaturas pendentes:
				<%=pesquisas.size()%></h1>
			<h4 class="text-lg font-semibold italic">
				Nossa IA definiu essas sugest�es para os pacientes de acordo com a
				analise dos dados obtidos pelo autoatendimento, precisamos de sua
				assinatura para liberar a receita!
				</h1>

				<ul class="flex flex-col gap-3 mt-4">
					<%
					if (!pesquisas.isEmpty()) {
						for (Pesquisa p : pesquisas) {
					%>
					<li class="gap-4 flex flex-row justify-center items-center">
						<div>
							<p>
								ID RECEITA:
								<%=p.getId()%></p>
						</div>
						<div class="gap-4 flex">
							<a href="ver-resultados?id=<%=p.getId()%>"><button
									class="bg-blue-600 flex flex-row cursor-pointer p-1 border rounded-md hover:bg-blue-500 gap-4">
									<i data-lucide="eye"></i>Ver resultados
								</button> </a>
						</div>
					</li>

					<%
					}
					}
					%>
				</ul>
		</div>
		<div class="flex flex-col w-[88%] justify-center items-center">
			<h1 class="mt-[2%] text-2xl font-semibold italic">
				Próximas consultas:
				<%=consultas.size()%></h1>

			<div
				class="flex justify-center items-center mt-[2%] rounded-lg border shadow-lg w-[88%] relative  overflow-x-auto">

				<table class="w-full">
					<thead class="bg-orange-400 w-full text-white">
						<tr>
							<th class="px-6 py-3  uppercase" scope="col">Nome paciente:</th>
							<th class="px-6 py-3  uppercase" scope="col">Email paciente:</th>
							<th class="px-6 py-3  uppercase" scope="col">Horario</th>
							<th class="px-6 py-3  uppercase" scope="col">Data:</th>
						</tr>
					</thead>


					<tbody>
						<%
						if (!consultas.isEmpty()) {
							for (Consulta c : consultas) {
						%>
						<tr class="border-b-orange-200 border-b">
							<td><%=c.getNomePaciente()%></td>
							<td><%=c.getEmailPaciente()%></td>
							<td><%=c.getHorario()%>H</td>
							<td><%=c.getData()%></p></td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>
		</div>



		<div
			class="flex mb-[5%] mt-[2%]  justify-center items-center gap-8 flex-col rounded-md border p-6 w-[88%]">
			<h1 class="text-2xl font-semibold italic">Ações</h1>
			<div class="flex flex-row gap-8">
				<div
					class="bg-gray-300 rounded-md border w-[16vw] h-[8vh] flex flex-row gap-8">
					<div
						class="bg-orange-500 w-full items-center flex justify-center text-white rounded-md border-orange-500 cursor-pointer hover:bg-orange-400">
						<a href="cadastrardados.jsp"
							class="flex-row items-center flex justify-center gap-4"> <i
							data-lucide="calendar-days" class="w-[40px] h-[40px]"></i>
							<p class="text-xl font-semibold">Cadastrar Dados Biometricos</p>
						</a>
					</div>
				</div>
				<div
					class="bg-gray-300 rounded-md border w-[16vw] h-[8vh] flex flex-row gap-8">
					<div
						class="bg-orange-500 w-full items-center flex justify-center text-white rounded-md border-orange-500 cursor-pointer hover:bg-orange-400">
						<a href="#"
							class="flex-row items-center flex justify-center gap-4"> <i
							data-lucide="eye" class="w-[40px] h-[40px]"></i>
							<p class="text-xl font-semibold">Visualizar Todas as
								Consultas</p>
						</a>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script>
		lucide.createIcons();
	</script>
</body>
</html>