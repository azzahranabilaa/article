<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>About Us - Wonderful Indonesia</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="umum/css/styles.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
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
        }

        /* Responsive */
        @media (max-width: 576px) {
            h1.pop-art-title {
                font-size: 2.4rem;
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
                    <li class="nav-item"><a class="nav-link active" href="about.php">Tentang</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.php">Kontak</a></li>
                    <li class="nav-item"><a class="nav-link" href="admin/login.php">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container my-5">
        <div class="pop-art-box mx-auto">
            <h1 class="pop-art-title">Tentang Kami</h1>
            <p class="pop-art-subtitle">Mengenal Lebih Dekat Keindahan dan Keanekaragaman di Indonesia</p>
        </div>

        <div class="content-section mx-auto" style="max-width: 800px;">
            <p>Selamat datang di Wonderful Indonesia, blog yang berdedikasi untuk mengangkat keindahan wisata, budaya. Kami percaya bahwa Indonesia adalah permata dunia dengan kekayaan alam dan budaya yang luar biasa, yang layak untuk dikenal dan dicintai oleh semua orang.</p>

            <p>Di sini, Anda akan menemukan artikel menarik seputar destinasi wisata, kuliner khas, dan tips perjalanan yang membantu Anda menjelajahi Indonesia dengan cara yang menyenangkan dan bermakna.</p>

            <p>Serta menjadi jembatan antara para wisatawan dan komunitas lokal agar tercipta pengalaman perjalanan yang berkesan.</p>

            <p>Terima kasih telah mengunjungi blog kami. Mari bersama-sama menjelajahi keajaiban Indonesia!</p>
        </div>
    </div>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <p class="m-0 text-center text-white">Copyright &copy; 2025 Blog Artikel | Tugas Pemrograman Web</p>
    </footer>

    <!-- Bootstrap core JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>