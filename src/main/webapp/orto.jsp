<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="includes/userauth.jsp"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<title>Autoatendimento Ortopedia</title>
</head>
<body>
	<header>
		<nav class="flex flex-row justify-between p-3 items-center">
			<div class="flex flex-row items-center gap-4">
				<img class="w-[40px]" src="../assets/logo-hapvida-escudo-2048.png"
					alt=""> <a href="index.jsp"><p
						class="italic text-blue-700 font-bold">Hapvida</p></a>
			</div>
		</nav>
	</header>
	<div>
		<div class="ml-[16%]">
			<a href="autoatendimento.jsp"
				class="italic font-semibold text-blue-600 cursor-default"> <span
				class="text-[3rem] text-orange-600 cursor-pointer">&larr;</span>
				Voltar
			</a>
		</div>
		<h1 class="flex justify-center font-bold">Atendimento Eletronico</h1>
		<div
			class="flex  justify-center mt-[5%] ml-[32%] border rounded-md w-[32vw] h-[56vh]">

			<form action="receber-respostas" class="mt-5" method="post">
				<input type="hidden" value="1" name="especialidade"> <label
					for="group1">1. Você se envolveu em algum acidente?</label>
				<fieldset id="group1" name="group1" class="flex flex-row gap-2">
					<input type="radio" value="1" name="p1">Sim 
					<input type="radio" value="0" name="p1" checked>Não
				</fieldset>
				<label for="group2">2. Em uma escala de 1 a 5 qual a sua dor na região?</label>
				<fieldset id="group2" name="group2" class="flex flex-row gap-2">
						<input type="radio" value="1" name="p2" checked>1
						<input type="radio" value="2" name="p2">2
						<input type="radio" value="3" name="p2">3
						<input type="radio" value="4" name="p2">4
						<input type="radio" value="5" name="p2">5
				</fieldset>
				<label for="group2">3. Você sente dor em algum região do corpo? </label>
				<fieldset id="group2" name="group2" class="flex flex-row gap-2">
					<input type="radio" value="1" name="p3">Sim 
					<input type="radio" value="0" name="p3" checked>Não
				</fieldset>
				<label for="group4">4. Você consegue movimentar a região lesionada? </label>
				<fieldset id="group4" name="group4" class="flex flex-row gap-2">
					<input type="radio" value="1" name="p4">Sim 
					<input type="radio" value="0" name="p4" checked>Não
				</fieldset>
				<label for="group5">5. Em uma escala de 1 a 5 qual a limitação do seu movimento?</label>
				<fieldset id="group5" name="group4" class="flex flex-row gap-2">
					<input type="radio" value="1" name="p5" checked>1
						<input type="radio" value="2" name="p5">2
						<input type="radio" value="3" name="p5">3
						<input type="radio" value="4" name="p5">4
						<input type="radio" value="5" name="p5">5
				</fieldset>
				<button type="submit"
					class="bg-blue-600 p-1 text-white w-[80%] rounded-md border mt-4">Enviar</button>
			</form>
		</div>
	</div>
</body>
</html>