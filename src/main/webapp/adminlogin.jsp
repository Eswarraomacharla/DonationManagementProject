<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function validateForm() {
            const username = document.getElementById("auname").value.trim();
            const password = document.getElementById("apwd").value.trim();
            let errorMessage = "";

            if (username === "") {
                errorMessage += "Username is required.\n";
            }
            if (password === "") {
                errorMessage += "Password is required.\n";
            }
            if (errorMessage) {
                alert(errorMessage);
                return false;
            }
            return true;
        }
    </script>
</head>
<body class="bg-gray-100">
    <%@ include file="mainnavbar.jsp" %>

    <h4 class="text-center text-red-600 text-lg">
        <c:out value="${message}"></c:out>
    </h4>
    <div class="flex flex-col max-w-lg p-8 mx-auto mt-20 bg-white rounded-lg shadow-xl dark:bg-gray-50 dark:text-gray-800">
        <div class="mb-8 text-center">
            <h1 class="my-4 text-5xl font-bold">Admin Login</h1>
            <p class="text-base dark:text-gray-600">Sign in to access your account</p>
        </div>
        <form method="post" action="checkadminlogin" onsubmit="return validateForm()" class="space-y-16">
            <div class="space-y-6">
                <div>
                    <label for="auname" class="block mb-2 text-base font-medium">User Name</label>
                    <input type="text" name="auname" id="auname" 
                        class="w-full px-4 py-3 text-lg border rounded-lg dark:border-gray-300 dark:bg-gray-50 dark:text-gray-800 focus:ring-violet-600 focus:border-violet-600">
                </div>
                <div>
                    <div class="flex justify-between mb-2">
                        <label for="apwd" class="text-base font-medium">Password</label>
                    </div>
                    <input type="password" name="apwd" id="apwd" placeholder="••••••••" 
                        class="w-full px-4 py-3 text-lg border rounded-lg dark:border-gray-300 dark:bg-gray-50 dark:text-gray-800 focus:ring-violet-600 focus:border-violet-600">
                </div>
            </div>
            <div class="space-y-4">
                <div>
                    <button type="submit" class="w-full px-10 py-4 text-lg font-semibold rounded-lg bg-violet-600 text-white hover:bg-violet-700">
                        Sign in
                    </button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
