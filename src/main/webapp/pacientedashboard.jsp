<%@page import="br.com.fiap.connection.ConnectionFactory"%>
<%@page import="br.com.fiap.dao.ConsultaDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="includes/userauth.jsp"%>
<%
	List<Consulta> consultas = new ConsultaDAO(ConnectionFactory.conectar()).listarConsultasUsuario(user.getId());
	
%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
    <title>Paciente Dashboard</title>
</head>
<body>
    <header class="border-b">
        <nav class="flex flex-row justify-between p-3 mx-[25%] items-center">
            <div class="flex flex-row items-center gap-4">
                <a href="index.jsp"><img class="w-[40px]" src="assets/logo-hapvida-escudo-2048.png" alt=""></a>
                <a href="index.jsp"><p class="italic text-blue-700 font-bold">Hapvida</p></a>
            </div>
           
            <ul class="flex flex-row gap-4">
                <li class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
                    <a href="autoatendimento.jsp">Autoatendimento</a>
                    </li>
                <li class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
                    <a href="rating.jsp">Avaliar tecnologias</a>
                </li>
                <li class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
                    <a href="visualizardados.jsp">Visualizar Dados Biometricos</a>
                </li>
                <li class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
                    <a href="agendamento.jsp">Agendar Exame</a>
                </li>
            </ul>
        </nav>
    </header>
    <div class="flex flex-col justify-center items-center">
        <div class="flex mt-[2%]  justify-center items-center gap-8 flex-col rounded-md border p-6 w-[88%]">
            <h1 class="text-2xl font-semibold italic">Olá ${user.getNome() }</h1>
            <h2 class="text-2xl font-semibold italic">Essas são suas proximas consultas</h2>
            <div class="flex flex-row gap-8">
                <table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Especialidade</th>
					<th scope="col">Data(AAAA-MM-DD)</th>
					<th scope="col">Horario</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (consultas != null) {
					for (Consulta c : consultas) {
				%>
				<tr>
					<td><%=c.getEspecialidade()%></td>
					<td><%=c.getData()%></td>
					<td><%=c.getHorario()%></td>
					
				</tr>

				<%
				}
				}
				%>

			</tbody>
		</table>
                
            </div>
        </div>
       
        <div class="flex mt-[2%]  justify-center items-center gap-8 flex-col rounded-md border p-6 w-[88%]">
            <h1 class="text-2xl font-semibold italic">Ações</h1>
            <div class="flex flex-row gap-8">
                <div class="bg-gray-300 rounded-md border w-[16vw] h-[8vh] flex flex-row gap-8">
                    <div class="bg-orange-500 w-full items-center flex justify-center text-white rounded-md border-orange-500 cursor-pointer hover:bg-orange-400">
                        <a href="agendamento.jsp" class="flex-row items-center flex justify-center gap-4">
                            <i data-lucide="calendar-days" class="w-[40px] h-[40px]"></i>
                            <p class="text-xl font-semibold">
                                Agendar exame
                            </p>
                        </a>
                    </div>
                </div>
                <div class="bg-gray-300 rounded-md border w-[18vw] h-[8vh] flex flex-row gap-8">
                    <div class="bg-blue-600 w-full items-center flex justify-center text-white rounded-md border-blue-500 cursor-pointer hover:bg-blue-500">
                        <a href="#" class="flex-row items-center flex justify-center gap-4">
                            <i data-lucide="eye" class="ml-[20px] w-[60px] h-[40px]"></i>
                            <p class="text-xl font-semibold">
                                Ver resultados do autoatendimento
                            </p>
                        </a>
                    </div>
                </div>
                  <div class="bg-gray-300 rounded-md border w-[18vw] h-[8vh] flex flex-row gap-8">
                    <div class="bg-blue-600 w-full items-center flex justify-center text-white rounded-md border-blue-500 cursor-pointer hover:bg-blue-500">
                        <a href="visualizardados.jsp" class="flex-row items-center flex justify-center gap-4">
                            <i data-lucide="eye" class="ml-[20px] w-[60px] h-[40px]"></i>
                            <p class="text-xl font-semibold">
                                Ver histórico de Dados Biometricos
                            </p>
                        </a>
                    </div>
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