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
            <a href="index.jsp"><img class="w-[72px] m-5" src="assets/logo-hapvida-escudo-2048.png" alt="" srcset=""></a>
        </nav>
    </header>

    <div class="flex flex-row gap-[4rem] justify-center mt-[10%]">
        <a href="orto.jsp" class="border text-white hover:bg-yellow-500 hover:opacity-70 hover:transition-all delay-75 bg-sky-600 rounded-md flex flex-col w-[24vw] h-[40vh] justify-center gap-[3.75rem] text-center items-center cursor-pointer">
            <i data-lucide="bone" class="w-[128px] h-[128px]"></i>
            <p class="text-3xl font-semibold">Ortopedista</p>
        </a>
        <a href="cardio.jsp" class="border text-white hover:bg-yellow-500 hover:opacity-70 hover:transition-all delay-75 bg-sky-600 rounded-md flex flex-col w-[24vw] h-[40vh] justify-center gap-[3.75rem] text-center items-center cursor-pointer">
            <i data-lucide="heart-pulse" class="w-[128px] h-[128px]"></i>
            <p class="text-3xl font-semibold">Cardiologista</p>
        </a>
        <a href="neuro.jsp" class="border text-white hover:bg-yellow-500 hover:opacity-70 hover:transition-all delay-75 bg-sky-600 rounded-md flex flex-col w-[24vw] h-[40vh] justify-center gap-[3.75rem] text-center items-center cursor-pointer">
            <i data-lucide="brain" class="w-[128px] h-[128px]"></i>
            <p class="text-3xl font-semibold">Neurologista</p>
        </a>
    </div>
<script>
        lucide.createIcons();
</script>
<style> 
</style>
</body>
</html>