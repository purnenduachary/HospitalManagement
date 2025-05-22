<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Healthcare Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/feather-icons"></script>
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <style>
        body {
            background: linear-gradient(145deg, #b2dfdb, #f8bbd0, #bbdefb); /* a bit stronger pastel */
            background-size: 400% 400%;
            animation: animatedBackground 25s ease infinite;
        }

        @keyframes animatedBackground {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .glass-card {
            backdrop-filter: blur(20px);
            background: rgba(255, 255, 255, 0.45); /* increased opacity from 0.25 */
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15); /* stronger shadow */
            border-radius: 1.5rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .glass-card:hover {
            transform: translateY(-8px) scale(1.05); /* slightly bigger on hover */
            box-shadow: 0 18px 50px rgba(0, 0, 0, 0.25); /* stronger hover shadow */
        }

        .icon-glow {
            background-color: rgba(255, 255, 255, 0.45); /* stronger white bg */
            backdrop-filter: blur(12px);
            padding: 1.25rem; /* slightly bigger padding */
            border-radius: 9999px;
        }

        h1 {
            color: #374151; /* darker gray-700 */
            text-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }

        h2 {
            color: #1e40af; /* stronger indigo-800 */
        }

        p {
            color: #374151; /* gray-700 */
        }

        /* Feather icon colors overridden for more vibrance */
        .text-indigo-600 {
            color: #3b82f6 !important; /* brighter blue */
        }
        .text-pink-600 {
            color: #ec4899 !important; /* brighter pink */
        }
        .text-teal-600 {
            color: #14b8a6 !important; /* brighter teal */
        }
    </style>
</head>
<body class="min-h-screen flex items-center justify-center py-20">

    <div class="w-full max-w-6xl px-6">
        <h1 class="text-5xl font-bold text-center mb-16" data-aos="zoom-in">Healthcare Management Dashboard</h1>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-12">

            <!-- Doctor Card -->
            <a href="DoctorDashBoard.jsf" class="glass-card p-10 text-center" data-aos="fade-up" data-aos-delay="100">
                <div class="flex flex-col items-center">
                    <div class="icon-glow mb-4">
                        <i data-feather="activity" class="w-10 h-10 text-indigo-600"></i>
                    </div>
                    <h2 class="text-xl font-semibold mb-2">Doctor Dashboard</h2>
                    <p class="text-sm">Handle appointments, records, and schedules.</p>
                </div>
            </a>

            <!-- Patient Card -->
            <a href="PatientDashBoard.jsf" class="glass-card p-10 text-center" data-aos="fade-up" data-aos-delay="200">
                <div class="flex flex-col items-center">
                    <div class="icon-glow mb-4">
                        <i data-feather="users" class="w-10 h-10 text-pink-600"></i>
                    </div>
                    <h2 class="text-xl font-semibold mb-2">Patient Dashboard</h2>
                    <p class="text-sm">Access records, prescriptions and profile.</p>
                </div>
            </a>

            <!-- Medication History Card -->
            <a href="MedHisDashBoard.jsf" class="glass-card p-10 text-center" data-aos="fade-up" data-aos-delay="300">
                <div class="flex flex-col items-center">
                    <div class="icon-glow mb-4">
                        <i data-feather="book" class="w-10 h-10 text-teal-600"></i>
                    </div>
                    <h2 class="text-xl font-semibold mb-2">Medication History</h2>
                    <p class="text-sm">Track and view medication & dosage history.</p>
                </div>
            </a>

        </div>
    </div>

    <script>
        feather.replace();
        AOS.init({ duration: 1000 });
    </script>
</body>
</html>
