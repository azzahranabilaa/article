<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Kontak Kami - Wonderful Indonesia</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap Icons CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <style>
        /* Pop Art style box */
        .pop-art-box {
            background: linear-gradient(45deg,rgb(0, 27, 107),rgb(126, 143, 186),rgb(153, 212, 226),rgb(134, 175, 211));
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            color: white;
            padding: 60px 30px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 0 40px rgba(180, 228, 255, 0.7);
            margin-bottom: 40px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
        }

        @keyframes gradientShift {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        h1.pop-art-title {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            font-size: 3.5rem;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
        }

        p.pop-art-subtitle {
            font-size: 1.4rem;
            font-weight: 600;
        }

        /* Content style */
        .content-section {
            font-size: 1.1rem;
            line-height: 1.6;
            color: #333;
            padding: 20px;
            background: #fefefe;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: 0 auto 40px auto;
        }

        /* Contact table with icons */
        .contact-table {
            max-width: 800px;
            margin: 0 auto 60px auto;
            width: 100%;
            font-size: 1.1rem;
            color: #333;
            border-collapse: separate;
            border-spacing: 0 10px;
        }

        .contact-table tbody tr:first-child td {
            text-align: center;
            font-weight: 600;
            font-size: 1.2rem;
            padding: 15px;
            background: #e9f7f7;
            color: #0a6e6e;
            border-radius: 12px;
        }

        .contact-table td {
            vertical-align: middle;
            padding: 12px 8px;
            background: #fff;
            box-shadow: 0 1px 4px rgba(0,0,0,0.05);
            border-radius: 12px;
        }

        .contact-table .icon {
            width: 30px;
            color: #1dd1a1;
            font-size: 1.4rem;
            text-align: center;
            padding-right: 10px;
        }

        /* Responsive */
        @media (max-width: 576px) {
            h1.pop-art-title {
                font-size: 2.4rem;
            }

            .contact-table {
                font-size: 1rem;
            }

            .contact-table .icon {
                font-size: 1.2rem;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.php">Wonderful Indonesia</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="index.php">Beranda</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.php">Tentang</a></li>
                    <li class="nav-item"><a class="nav-link active" href="contact.php">Kontak</a></li>
                    <li class="nav-item"><a class="nav-link" href="admin/login.php">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container my-5">

        <!-- Pop Art Title Box -->
        <div class="pop-art-box">
            <h1 class="pop-art-title">Kontak Kami</h1>
            <p class="pop-art-subtitle">Jangan ragu menghubungi kami, kami siap membantu!</p>
        </div>

        <!-- Contact Table -->
        <table class="contact-table">
            <tbody>
                <tr>
                    <td colspan="2">Jika Anda memiliki pertanyaan atau ingin berdiskusi lebih lanjut. Kami siap membantu Anda melalui informasi kontak di bawah ini:</td>
                </tr>
                <tr>
                    <td class="icon"><i class="bi bi-envelope-fill" title="Email"></i></td>
                    <td>azzahrazr@gmail.com</td>
                </tr>
                <tr>
                    <td class="icon"><i class="bi bi-telephone-fill" title="Telepon"></i></td>
                    <td>+62 85678945623</td>
                </tr>
                <tr>
                    <td class="icon"><i class="bi bi-geo-alt-fill" title="Alamat"></i></td>
                    <td>Jl. Sunan Kalijaga</td>
                </tr>
            </tbody>
        </table>

    </div>

    <!-- Footer -->
    <footer class="py-5 bg-dark text-center text-white">
        <div class="container">
            <p class="m-0">Copyright &copy; 2025 Blog Artikel | Tugas Pemrograman Web</p>
        </div>
    </footer>

    <!-- Bootstrap core JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
