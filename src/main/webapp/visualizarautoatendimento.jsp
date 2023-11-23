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
<h2>Perguntas e Respostas ${especialidade}</h2>

<ol>
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
</ol>
<a href="assinar-sugestao?id=${id}?status=1"><button
		class="bg-green-600 flex flex-row cursor-pointer p-1 border rounded-md hover:bg-blue-500 gap-4">
		<i data-lucide="check"></i>Aceitar
	</button> </a>
<a href="assinar-sugestao?id=${id}?status=0"><button
		class="bg-red-600 flex flex-row cursor-pointer p-1 border rounded-md hover:bg-blue-500 gap-4">
		<i data-lucide="x"></i>Recusar
	</button> </a>



<script>
	lucide.createIcons();
</script>
</body>
</html>