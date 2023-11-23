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
				class="rounded-md border w-[24vw] h-[48vh] flex flex-col justify-center items-center gap-4 mt-[20%]">
				<img src="assets/logo-hapvida-escudo-2048.png" class="w-[40px]"
					alt="" srcset="">
				<h1 class="text-xl font-bold">Pronto pra fazer parte da nossa
					história?</h1>
				<p>Para se logar siga os passos abaixo:</p>
				<form class="items-center flex flex-col gap-8 p-2" action="login" method="post">
					<div>
						<label for="email">E-mail:</label> <input placeholder="Email"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="email" />
					</div>
					<div>
						<label for="senha">Senha:</label> <input placeholder="Senha"
							class="rounded-md border p-2 ml-1 w-[20vw]" name="senha" />
					</div>
					<button
						class="rounded-md border p-2 text-white bg-orange-600 w-[80%]"
						type="submit">Entrar</button>
						<button
						class="rounded-md border p-2 text-white bg-orange-600 w-[80%]"
						><a href="pacienteregistro.jsp">Registrar</a></button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
