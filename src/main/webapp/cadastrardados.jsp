<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
<title>Cadastrar Dados Biometricos</title>
</head>
<body>

	<div class="ml-[16%]">
		<a href="medicodashboard.jsp"
			class="italic font-semibold text-blue-600 cursor-default"> <span
			class="text-[3rem] text-orange-600 cursor-pointer">&larr;</span>
			Voltar
		</a>
	</div>


	<div class="flex justify-center items-center">
		<div
			class="flex flex-col items-center mt-[6%] border rounded-lg shadow-lg w-[56vh] h-[48vh]">
			<form action="cadastrar-dados" method="get"
				class="flex flex-col gap-6 justify-center items-center mt-[10%]">
				<div>
					<p>Cadastre os dados de seu paciente</p>
				</div>
				<div class="flex flex-row gap-4">
					<label for="cpf"><span
						class="text-lg font-semibold min-w-[100px]">1.</span>ID: </label> <input
						type="text" name="id" id="id"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]" required>

				</div>
				<div class="flex flex-row gap-[3.75rem]">
					<label for="tipoSangue"><span
						class="text-lg font-semibold min-w-[100px]">2.</span>Tipo
						Sanguíneo</label> <select name="tipoSangue" id="tipoSangue"
						class="border rounded-md p-1 cursor-pointer w-[8vw]" required>
						<option value="A+">Selecione</option>
						<option value="A+">A+</option>
						<option value="A-">A-</option>
						<option value="B+">B+</option>
						<option value="B-">B-</option>
						<option value="AB+">AB+</option>
						<option value="AB-">AB-</option>
						<option value="O+">O+</option>
						<option value="O-">O-</option>
					</select>

				</div>
				<div class="flex flex-row gap-4">
					<label for="altura"><span
						class="text-lg font-semibold min-w-[100px]">3.</span>Altura (cm):
					</label> <input type="text" name="altura" id="altura"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]" required>

				</div>

				<div class="flex flex-row gap-4">
					<label for="oxigenacao"><span
						class="text-lg font-semibold min-w-[100px]">4.</span>Oxigenação
						(0-1): </label> <input type="text" name="oxigenacao" id="oxigenacao"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]" required>

				</div>

				<div class="flex flex-row gap-4">
					<label for="pressao"><span
						class="text-lg font-semibold min-w-[100px]">5.</span>Pressão: </label> <input
						type="text" name="pressao" id="pressao"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]" required>

				</div>

				<div class="flex flex-row gap-4">
					<label for="pressao"><span
						class="text-lg font-semibold min-w-[100px]">5.</span>Peso: </label> <input
						type="text" name="peso" id="peso"
						class="border rounded-md p-1 cursor-pointer min-w-[8vw]" required>

				</div>


				<div>
					<button type="submit"
						class="w-[8vw] border bg-blue-600 hover:bg-blue-500 rounded-md p-1 text-white">Cadastrar</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>