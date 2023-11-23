<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="includes/userauth.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
<title>Agendar Exame</title>
</head>
<body class="p-0 m-0 box-border">
	<header class="border-b">
		<nav class="flex flex-row justify-between p-3 mx-[25%] items-center">
			<div class="flex flex-row items-center gap-4">
				<a href="index.jsp"><img class="w-[40px]" src="assets/logo-hapvida-escudo-2048.png"
					alt=""></a>
				<a href="index.jsp"><p class="italic text-blue-700 font-bold">Hapvida</p></a>
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
					<a href="agendamento.jsp">Agendar Exame</a>
				</li>
			</ul>
		</nav>
	</header>
	<div class="flex justify-center items-center">
		<div
			class="flex flex-col items-center mt-[6%] border rounded-lg shadow-lg w-[56vh] h-[48vh]">
			<form action="agendar" method="get"
				class="flex flex-col gap-6 justify-center items-center mt-[10%]">
				<div>
					<p>Porfavor, para agendar seu exame siga o formulário a seguir:
					</p>
				</div>
				<div class="flex flex-row gap-4">
					<label for="especialista"><span
						class="text-lg font-semibold min-w-[100px]">1.</span>Especialista:</label>
					<select name="especialidade"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]">
						<option value="1">Ortopedista</option>
						<option value="2">Cardiologista</option>
						<option value="3">Neurologista</option>
					</select>
				</div>
				<div class="flex flex-row gap-[3.75rem]">
                    <label for="data"><span class="text-lg font-semibold min-w-[100px]">2. </span>Data:</label>
                    <input type="date" name="data" id="data" class="border rounded-md p-1 cursor-pointer min-w-[8vw]" min="<%= java.time.LocalDate.now() %>">
                </div>
				<div class="flex flex-row gap-[2.75rem]">
					<!-- Isso daqui é editável, só to fazendo uns exemplos -->
					<label for="number"><span
						class="text-lg font-semibold min-w-[100px]">3. </span>Horário:</label> <select
						name="time" id="time"
						class="border rounded-md p-1 cursor-pointer w-[8vw]">
						<option value="10:30">10:30</option>
						<option value="11:00">11:00</option>
						<option value="11:30">11:30</option>
					</select>
				</div>

				<div>
					<button type="submit"
						class="w-[8vw] border bg-blue-600 hover:bg-blue-500 rounded-md p-1 text-white">Enviar</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>