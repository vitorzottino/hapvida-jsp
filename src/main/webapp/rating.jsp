 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/@mui/material@latest/umd/material-ui.development.js"></script>
    <title>Avaliar</title>
</head>
<body>
    <header>
        <nav class="flex flex-row justify-between p-3 items-center">
            <div class="flex flex-row items-center gap-4">
                <a href="index.jsp"><img class="w-[40px]" src="assets/logo-hapvida-escudo-2048.png" alt=""></a>
                <a href="index.jsp"><p class="italic text-blue-700 font-bold">Hapvida</p></a>
            </div>
        </nav>
    </header>
    <div class="flex justify-center items-center">
        <div class="flex flex-col gap-4 mt-[8%]">
            <h1 class="text-2xl font-semibold text-blue-500">
                Por favor, avalie nossas tecnologias!
            </h1>
            <div>
                <form action="avaliar" method="get"
				class="flex flex-col gap-6 justify-center items-center mt-[10%]">
				
				<div class="flex flex-row gap-4">
					<label for="especialista"><span
						class="text-lg font-semibold min-w-[100px]"></span>Especialista:</label>
					<select name="especialidade"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]">
						<option value="1">Ortopedista</option>
						<option value="2">Cardiologista</option>
						<option value="3">Neurologista</option>
					</select>
				</div>
			
				<div class="flex flex-row gap-[2.75rem]">
					<label for="number"><span
						class="text-lg font-semibold min-w-[100px]"></span>Sua Nota de (1-5):</label>
						<select
						name="nota" id="nota"
						class="border rounded-md p-1 cursor-pointer w-[8vw]">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="2">4</option>
						<option value="3">5</option>
					</select>
				</div>

				<div>
					<button type="submit"
						class="w-[8vw] border bg-blue-600 hover:bg-blue-500 rounded-md p-1 text-white">Enviar Feedback</button>
				</div>
			</form>
            </div>
            
        </div>
    </div>
</body>
</html>