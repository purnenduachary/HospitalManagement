<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/feather-icons"></script>
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <style>
        body {
            background: linear-gradient(to right, #e0f2ff, #edf4ff, #e6ecff);
            background-size: 300% 300%;
            animation: bgAnim 20s ease infinite;
        }

        @keyframes bgAnim {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .glass-card {
            backdrop-filter: blur(16px);
            background: rgba(255, 255, 255, 0.25);
            border-radius: 1rem;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .glass-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
        }
    </style>
</head>
<body class="min-h-screen text-gray-800">

    <!-- Top Navigation -->
    <nav class="bg-indigo-600 px-6 py-4 flex justify-end shadow-lg">
        <a href="HomePage.jsf" class="text-white font-semibold text-sm px-4 py-2 rounded-md hover:bg-indigo-800 transition">
            Home
        </a>
    </nav>

    <!-- Header -->
    <header class="text-center py-16">
        <h1 class="text-4xl font-bold text-indigo-700" data-aos="zoom-in">Doctor Dashboard</h1>
        <p class="text-gray-600 mt-2 text-lg">Manage doctors, search, and view details</p>
    </header>

    <!-- Menu Cards -->
    <div class="max-w-5xl mx-auto px-6 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-2 gap-8 pb-20">

        <!-- Add Doctor -->
        <a href="AddDoctor.jsf" class="glass-card p-8 text-center" data-aos="fade-up">
            <i data-feather="user-plus" class="w-10 h-10 text-indigo-600 mx-auto mb-4"></i>
            <h2 class="text-xl font-semibold mb-2">Add Doctor</h2>
            <p class="text-sm text-gray-600">Register a new doctor to the hospital system.</p>
        </a>

        <!-- Show Doctors -->
        <a href="DoctorShow.jsf" class="glass-card p-8 text-center" data-aos="fade-up" data-aos-delay="100">
            <i data-feather="users" class="w-10 h-10 text-blue-600 mx-auto mb-4"></i>
            <h2 class="text-xl font-semibold mb-2">Show Doctors</h2>
            <p class="text-sm text-gray-600">View all registered doctors and their profiles.</p>
        </a>

        <!-- Search by ID -->
        <a href="SearchDocById.jsf" class="glass-card p-8 text-center" data-aos="fade-up" data-aos-delay="200">
            <i data-feather="search" class="w-10 h-10 text-sky-600 mx-auto mb-4"></i>
            <h2 class="text-xl font-semibold mb-2">Search by Doctor ID</h2>
            <p class="text-sm text-gray-600">Find a doctor using their unique ID.</p>
        </a>

        <!-- Search by Specialization -->
        <a href="SearchBySpec.jsf" class="glass-card p-8 text-center" data-aos="fade-up" data-aos-delay="300">
            <i data-feather="layers" class="w-10 h-10 text-cyan-600 mx-auto mb-4"></i>
            <h2 class="text-xl font-semibold mb-2">Search by Specialization</h2>
            <p class="text-sm text-gray-600">Locate doctors based on their expertise.</p>
        </a>

    </div>

    <!-- Feather + AOS Init -->
    <script>
        feather.replace();
        AOS.init({ duration: 1000 });
    </script>

</body>
</html>
