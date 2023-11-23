<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="includes/userauth.jsp"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<title>Hapvida Paciente Login</title>
</head>
<body class="m-0 p-0 box-border">
	<div class="flex h-[100vh]">
		<div class="flex-1">
			<img class="w-[90%] h-full" src="assets/hospital-vasco-lucena.jpg"
				alt="Hapvida">
		</div>
		<div class="flex flex-col flex-1 items-center">
			<div
				class="rounded-md border w-[24vw] h-[60vh] flex flex-col justify-center items-center gap-4 mt-[20%]">
				<img src="assets/logo-hapvida-escudo-2048.png" class="w-[40px]"
					alt="" srcset="">
				<h1 class="text-xl font-bold">Pronto pra fazer parte da nossa
					história?</h1>
				<p>Para se cadastrar siga os passos abaixo:</p>
				<form class="items-center flex flex-col gap-8 p-2"
					action="registrar" method="get">
					<div>
						<label for="nome">Nome:</label> <input placeholder="Nome"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="nome" required maxlength="50"/>
					</div>

					<div>
						<label for="email">E-mail:</label> <input placeholder="Email"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="email" required maxlength="50"/>
					</div>
					<div>
						<label for="senha">Senha:</label> <input placeholder="Senha"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="senha" required maxlength="50"/>
					</div>
					<div>
						<label for="idade">Idade:</label> <input placeholder="Idade"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="idade" required
							maxlength="3" />
					</div>
					<div>
						<label for="CPF">CPF:</label> <input type="text" placeholder="CPF"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="CPF" required
							maxlength="11" />

					</div>
					<button
						class="rounded-md border p-2 text-white bg-orange-600 w-[80%]"
						type="submit">Registre-se</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>