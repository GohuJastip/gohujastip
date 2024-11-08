<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Alamat - GOHU</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar */
        .navbar {
            width: 100%;
            background: linear-gradient(135deg, #3498db, #1abc9c);
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 10;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar a,
        .navbar button {
            display: inline-block;
            padding: 12px 18px;
            color: white;
            background-color: transparent;
            border: none;
            font-size: 16px;
            text-decoration: none;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        }

        .navbar a:hover,
        .navbar button:hover {
            background-color: #2980b9;
            transform: scale(1.05);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar .active {
            background-color: #16a085;
        }

        .navbar .login {
            float: right;
            background-color: #e74c3c;
        }

        /* Logo and Centered Title */
        .center-text {
            text-align: center;
            margin-top: 60px;
            padding: 10px;
        }

        .logo-img {
            width: 180px;
            height: auto;
            margin-bottom: 20px;
        }

        .center-text p {
            font-size: 24px;
            color: #2c3e50;
            font-weight: 700;
            margin-top: 10px;
        }

        /* Main Content Area */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 40px;
            padding: 0 15px;
        }

        .content-box {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            text-align: center;
            width: 100%;
            max-width: 600px;
            margin-bottom: 40px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .content-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 16px 32px rgba(0, 0, 0, 0.15);
        }

        .content-box h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #34495e;
            font-weight: 700;
        }

        .content-box p {
            font-size: 18px;
            color: #7f8c8d;
            margin-bottom: 30px;
        }

        /* Harga Information */
        .price-info {
            font-size: 22px;
            color: #e74c3c;
            font-weight: bold;
            margin-top: 20px;
            padding: 12px;
            background-color: #f9ebc6;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        /* Form Inputs */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            font-size: 16px;
            color: #2c3e50;
            font-weight: 600;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.5);
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #3498db;
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

        /* Footer */
        footer {
            text-align: center;
            margin-top: 60px;
            padding: 20px;
            background-color: #3498db;
            color: white;
            font-size: 14px;
        }

        footer p {
            margin: 0;
        }

        /* Mobile Responsiveness */
        @media screen and (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }

            .content-box {
                width: 90%;
                padding: 30px;
            }

            .logo-img {
                width: 150px;
            }
        }
    </style>
</head>
<body>

    <!-- Header dengan logo dan judul -->
    <div class="center-text">
        <img src="GOHU1.png" alt="Logo GOHU" class="logo-img">
        <p>Jasa Titip Paket Murah Pelayanan Terbaik</p>
    </div>

    <!-- Navbar -->
    <div class="navbar">
        <a class="active" href="index.html">Beranda</a>
        <a href="Daftaralamat.jsp">Daftar Alamat</a>
        <button onclick="location.href='login.jsp'" class="login">Login</button>
    </div>

    <!-- Main Content Area -->
    <div class="container">
        <div class="content-box">
            <h2>Selamat Datang di GOHU!</h2>
            <p>Kami menyediakan layanan jasa titip paket dengan harga terbaik dan pelayanan yang cepat dan aman.</p>

            <!-- Informasi Harga -->
            <div class="price-info">
                Jakarta ke Maluku Utara mulai dari Rp. 17.000/Kg
            </div>

            <form action="prosesalamat.jsp" method="post">
                <div class="form-group">
                    <label for="nama">Nama:</label>
                    <input type="text" id="nama" name="nama" required>
                </div>
                <div class="form-group">
                    <label for="wa">No WA:</label>
                    <input type="text" id="wa" name="wa" required>
                </div>
                <button type="submit">Kirim</button>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 GOHU By. Pace.dniel.</p>
    </footer>

</body>
</html>
