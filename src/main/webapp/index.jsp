<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="includes/userauth.jsp"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
    <title>Hapvida</title>
</head>
<body class="m-0 p-0 box-border">
    <header>
        <nav>
            <img class="w-[72px] m-5" src="assets/logo-hapvida-escudo-2048.png" alt="">
        </nav>
    </header>
    
<div id="myModal" class="fixed bg-[rgba(0,0,0,0.7)] top-0 left-0 w-full h-full">
    <div class="bg-white m-[15% auto] p-[20px] w-[40%] h-[16vh] border rounded-md mt-[15%] flex flex-col justify-center ml-[30%]">
        <div><span class="flex justify-end mb-4 text-black text-[28px] font-bold cursor-pointer" id="closeModalBtn">&times;</span></div>
      <div>
        <p class="text-xl font-bold">Bem-vindo a Hapvida! Escolha se você é paciente ou médico.</p>
        <p>Caso ainda não seja registrado, não se preocupe! Clique em paciente e realize o seu registro.</p>
      </div>
    </div>
  </div>
    <div class="flex flex-row gap-[4rem] justify-center mt-[10%]">
        <a href="pacientelogin.jsp"class="border text-white hover:bg-yellow-500 hover:opacity-70 hover:transition-all delay-75 bg-sky-600 rounded-md flex flex-col w-[24vw] h-[40vh] justify-center gap-[3.75rem] text-center items-center cursor-pointer">
            <i data-lucide="person-standing" class="w-[128px] h-[128px]"></i>
            <p class="text-3xl font-semibold">Paciente</p>
        </a>
        <a href="medicologin.jsp" class="border text-white hover:bg-yellow-500 hover:opacity-70 hover:transition-all delay-75 bg-sky-600 rounded-md flex flex-col w-[24vw] h-[40vh] justify-center gap-[3.75rem] text-center items-center cursor-pointer">
            <i data-lucide="stethoscope" class="w-[128px] h-[128px]"></i>
            <p class="text-3xl font-semibold">Médico</p>
        </a>
    </div>
<script>
        lucide.createIcons();
        var modal = document.getElementById('myModal');
        var openModalBtn = document.getElementById('openModalBtn');
        var closeModalBtn = document.getElementById('closeModalBtn');

        // Função para exibir o modal
        function openModal() {
            modal.style.display = 'block';
        }

        // Função para fechar o modal
        function closeModal() {
            modal.style.display = 'none';
        }

        // Evento de clique para fechar o modal clicando no botão "X"
        closeModalBtn.onclick = closeModal;

        // Fechar o modal se clicar fora da área do conteúdo
        window.onclick = function(event) {
            if (event.target == modal) {
                closeModal();
            }
        };

        // Exibir o modal quando a página for carregada
        window.onload = openModal;
</script>
<style>
</style>
</body>
</html>