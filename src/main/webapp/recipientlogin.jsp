<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recipient Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <%@ include file="mainnavbar.jsp" %>

    <h4 class="text-center text-red-600 text-lg">
        <c:out value="${message}"></c:out>
    </h4>
    <div class="flex flex-col max-w-lg p-8 mx-auto mt-20 bg-white rounded-lg shadow-xl dark:bg-gray-50 dark:text-gray-800">
        <div class="mb-8 text-center">
            <h1 class="my-4 text-5xl font-bold">Recipient Login</h1>
            <p class="text-base dark:text-gray-600">Sign in to access your account</p>
        </div>
        <form method="post" action="checkrecipientlogin" class="space-y-16">
            <div class="space-y-6">
                <div>
                    <label for="remail" class="block mb-2 text-base font-medium">Email address</label>
                    <input type="text" name="remail" id="remail" placeholder="example@domain.com" 
                        class="w-full px-4 py-3 text-lg border rounded-lg dark:border-gray-300 dark:bg-gray-50 dark:text-gray-800 focus:ring-violet-600 focus:border-violet-600">
                </div>
                <div>
                    <div class="flex justify-between mb-2">
                        <label for="rpwd" class="text-base font-medium">Password</label>
                        <a href="#" class="text-sm text-violet-600 hover:underline">Forgot password?</a>
                    </div>
                    <input type="password" name="rpwd" id="rpwd" placeholder="••••••••" 
                        class="w-full px-4 py-3 text-lg border rounded-lg dark:border-gray-300 dark:bg-gray-50 dark:text-gray-800 focus:ring-violet-600 focus:border-violet-600">
                </div>
            </div>
            <div class="space-y-4">
                <div>
                    <button type="submit" class="w-full px-10 py-4 text-lg font-semibold rounded-lg bg-violet-600 text-white hover:bg-violet-700">
                        Sign in
                    </button>
                </div>
                <p class="px-6 text-base text-center text-gray-600">
                    Don't have an account yet? 
                    <a href="recipientreg.jsp" class="hover:underline text-violet-600">Sign up</a>.
                </p>
            </div>
        </form>
    </div>
</body>
</html>
