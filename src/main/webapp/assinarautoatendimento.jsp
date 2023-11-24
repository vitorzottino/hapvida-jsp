<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
<title>Medico - Autoatendimento</title>
</head>
<body class="p-0 m-0 box-border">
	<header class="border-b">
		<nav class="flex flex-row justify-between p-3 mx-[25%] items-center">
			<div class="flex flex-row items-center gap-4">
				<img class="w-[40px]" src="assets/logo-hapvida-escudo-2048.png"
					alt="">
				<p class="italic text-blue-700 font-bold">Hapvida</p>
			</div>

			<ul class="flex flex-row gap-4">
				<li
					class="cursor-pointer text-orange-500 hover:text-orange-200 font-semibold">
					<a href="">Dashboard</a>
				</li>
			</ul>
		</nav>
	</header>
	<div
		class="rounded-lg border shadow-lg w-[32vw] h-[40vh] justify-center items-center flex flex-col mt-[2%] ml-[35%]">
		<h2 class="font-semibold text-lg">Perguntas e Respostas
			${especialidade}</h2>
		<ol class="ml-[5rem]">
			<li><label for="pergunta1">${pergunta1}</label> <input
				value="${resposta1}" type="text" id="resposta1" name="resposta1"
				readonly></li>
			<li><label for="pergunta1">${pergunta2}</label> <input
				value="${resposta2}" type="text" id="resposta2" name="resposta2"
				readonly></li>
			<li><label for="pergunta1">${pergunta3}</label> <input
				value="${resposta3}" type="text" id="resposta3" name="resposta3"
				readonly></li>
			<li><label for="pergunta1">${pergunta4}</label> <input
				value="${resposta4}" type="text" id="resposta4" name="resposta4"
				readonly></li>
			<li><label for="pergunta1">${pergunta5}</label> <input
				value="${resposta5}" type="text" id="resposta5" name="resposta5"
				readonly></li>
			<li class="flex flex-row gap-4  items-center">
			<p class="font-semibold text-lg">Sugestão</p>
			<p>${sugestao}</p>
			</li>
		</ol>
		<div class="flex flex-row gap-4 mt-[2%]">
			<a href="assinar-sugestao?id=${id}&status=1"
				class="bg-green-600 flex flex-row cursor-pointer p-1 border rounded-md hover:bg-green-500 gap-4 w-[100px] justify-center items-center">
				<i data-lucide="check"></i>Aceitar
			</a> <a href="assinar-sugestao?id=${id}&status=0"
				class="bg-red-600 flex flex-row cursor-pointer p-1 border rounded-md hover:bg-red-500 gap-4 w-[100px] justify-center items-center">
				<i data-lucide="x"></i>Recusar
			</a>
		</div>
	</div>

	<script>
		lucide.createIcons();

		function assinarStatus1() {

		}
	</script>
</body>
</html>