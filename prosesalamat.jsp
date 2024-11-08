<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ubah Alamat</title>
    <style>
        /* Reset dan dasar tampilan */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        /* Container utama dengan gaya ponsel */
        .phone-screen {
            width: 400px;
            max-width: 100%;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border: 1px solid #ddd;
        }

        /* Header dan tombol kembali */
        .header {
            background-color: #007bff;
            color: white;
            padding: 15px;
            text-align: center;
            position: relative;
        }

        .back-button {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: white;
            font-size: 20px;
            text-decoration: none;
        }

        .header h2 {
            margin: 0;
            font-size: 20px;
            font-weight: 500;
        }

        /* Bagian isi konten */
        .content {
            padding: 30px 25px;
            color: #495057;
        }

        /* Seksi Kontak dan Alamat */
        .section {
            font-weight: 600;
            color: #6c757d;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .info {
            margin: 12px 0;
            font-size: 16px;
            line-height: 1.5;
        }

        /* Pemisah antara tulisan */
        .separator {
            border-bottom: 1px solid #dee2e6;
            margin: 15px 0;
            padding-bottom: 15px;
        }

        /* Border abu-abu untuk bagian kontak dan alamat */
        .section-box {
            border: 1px solid #d6d6d6; /* Warna abu-abu terang */
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            background-color: #fafafa; /* Latar belakang abu-abu muda */
        }

        /* Tombol dengan animasi hover */
        .button {
            display: inline-block;
            padding: 12px 25px;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            font-weight: 500;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            width: 100%;
            transition: all 0.3s ease;
        }

        .button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        /* Peta Google atau Placeholder Peta */
        .map {
            width: 100%;
            height: 220px;
            margin-top: 20px;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Responsif untuk perangkat kecil */
        @media (max-width: 600px) {
            .phone-screen {
                width: 100%;
                margin: 15px;
            }

            .content {
                padding: 20px 15px;
            }

            .button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="phone-screen">
        <!-- Header dengan tombol kembali -->
        <div class="header">
            <a href="javascript:history.back()" class="back-button">&#8592;</a>
            <h2>Ubah Alamat</h2>
        </div>
        
        <div class="content">
            <!-- Bagian Kontak dengan batasan abu-abu -->
            <div class="section-box">
                <div class="section">Kontak</div>
                <div class="info">
                    <% String nama = request.getParameter("nama"); %>
                    <% String noWa = request.getParameter("wa"); %>
                    GHU <%= nama %> <%= noWa %>
                </div>
                <div class="info">
                    081244801294
                </div>
            </div>
            
            <!-- Pemisah antara bagian Kontak dan Alamat -->
            <div class="separator"></div>
            
            <!-- Bagian Alamat dengan batasan abu-abu -->
            <div class="section-box">
                <div class="section">Alamat</div>
                <div class="info">
                    DKI JAKARTA<br>
                    KOTA JAKARTA TIMUR<br>
                    CILILITAN<br>
                    13640
                </div>
                <div class="info">
                    GOHUJASTIP Kontrakan oren, Gg. Alisarbi Cililitan 13640. RT.08 RW.09 No. 11A (GHU <%= nama %> <%= noWa %>)
                </div>
            </div>
            
            <!-- Placeholder Map atau Google Map -->
            <div class="map">
                <img src="https://maps.googleapis.com/maps/api/staticmap?center=-6.129386,106.869774&zoom=15&size=400x200&key=YOUR_API_KEY" alt="Map Lokasi" style="width:100%; height:100%;">
                <!-- Pastikan untuk mengganti 'YOUR_API_KEY' dengan API Key dari Google Maps jika ingin menampilkan map asli -->
            </div>

            <!-- Tombol Kembali atau Submit -->
            <a href="#" class="button">Kembali ke Beranda</a>
        </div>
    </div>
</body>
</html>
