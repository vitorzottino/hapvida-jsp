<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Cardiologista Forms</title>
</head>
<body>
    <header>
        <nav class="flex flex-row justify-between p-3 items-center">
            <div class="flex flex-row items-center gap-4">
                <img class="w-[40px]" src="../assets/logo-hapvida-escudo-2048.png" alt="">
                <p class="italic text-blue-700 font-bold">Hapvida</p>
            </div>
        </nav>
    </header>
    <div>
        <div class="ml-[16%]">
            <a href="autoatendimento.jsp" class="italic font-semibold text-blue-600 cursor-default">
                <span class="text-[3rem] text-orange-600 cursor-pointer">&larr;</span> Voltar
            </a>
        </div>
        <h1 class="flex justify-center font-bold align-center">Atendimento Eletronico</h1>
        <div class="flex  justify-center mt-[5%] ml-[32%] border rounded-md w-[32vw] h-[56vh]">
            <form action="receber-respostas" class="mt-5" method="post">
				<input type="hidden" value="2" name="especialidade"> <label
					for="group1">1. Dor intensa no peito, tipo queima��o ou aperto? </label>
				<fieldset id="group1" name="group1" class="flex flex-row gap-4">
					<input type="radio" value="1" name="p1">Sim <input
						type="radio" value=0 name="p1" checked>N�o
				</fieldset>
				<label for="group2">2. Dor que pode irradiar para os bra�os ou para a mand�bula?</label>
				<fieldset id="group2" name="group2" class="flex flex-row gap-4">
					<input type="radio" value="1" name="p2">Sim <input
						type="radio" value=0 name="p2" checked>N�o
				</fieldset>
				<label for="group2">3. Dor que dura por mais de 15 minutos sem melhorar?</label>
				<fieldset id="group2" name="group2" class="flex flex-row gap-4">
					<input type="radio" value="1" name="p3">Sim <input
						type="radio" value=0 name="p3" checked>N�o
				</fieldset>
				<label for="group4">4. Sensa��o de falta de ar? </label>
				<fieldset id="group4" name="group4" class="flex flex-row gap-4">
					<input type="radio" value="1" name="p4">Sim <input
						type="radio" value=0 name="p4" checked>N�o
				</fieldset>
				<label for="group5">5. N�useas e v�mitos?</label>
				<fieldset id="group5" name="group4" class="flex flex-row gap-4">
					<input type="radio" value="1" name="p5">Sim <input
						type="radio" value=0 name="p5" checked>N�o
				</fieldset>
				<button type="submit"
					class="bg-blue-600 p-1 text-white w-[80%] rounded-md border mt-4">Enviar</button>
			</form>
        </div>
    </div>
</body>
</html>