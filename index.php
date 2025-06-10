<?php
require 'admin/functions.php';

// Tangkap keyword search (jika ada)
$keyword = isset($_GET['search']) ? trim($_GET['search']) : '';

// Jika ada keyword, cari artikel sesuai keyword, kalau tidak ambil semua artikel
if ($keyword !== '') {
    $keyword_escaped = mysqli_real_escape_string($conn, $keyword);
    $articles = query("
        SELECT 
            a.id,
            a.title,
            a.date,
            a.content,
            a.picture,
            au.nickname AS author
        FROM article a
        LEFT JOIN article_author aa ON a.id = aa.article_id
        LEFT JOIN author au ON aa.author_id = au.id
        WHERE a.title LIKE '%$keyword_escaped%' OR a.content LIKE '%$keyword_escaped%'
        ORDER BY a.date DESC
    ");
} else {
    $articles = getAllArticles();
}

// Ambil semua kategori untuk sidebar
$categories = query("SELECT id, name FROM category");

$currentPage = basename($_SERVER['PHP_SELF']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Home - Blog Wisata Indonesia</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="css/styles.css" rel="stylesheet" />
    <style type="text/css">
        .tentang {
            text-align: justify;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.php">Wonderful Indonesia</a>
            <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" href="index.php">Beranda</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.php">Tentang</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.php">Kontak</a></li>
                    <li class="nav-item"><a class="nav-link" href="admin/login.php">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="py-5 bg-light border-bottom mb-4">
        <div class="container">
            <div class="text-center my-5">
                <h1 class="fw-bolder">Selamat Datang di Blog Kami!</h1>
                <p class="lead mb-0">Blog Kekayaragaman di Indonesia</p>
            </div>
        </div>
    </header>

    <!-- Konten -->
    <div class="container">
        <div class="row">
            <!-- Artikel -->
            <div class="col-lg-8">
                <?php if (count($articles) === 0): ?>
                    <p>Tidak ada artikel untuk ditampilkan.</p>
                <?php else: ?>
                    <?php foreach ($articles as $article): ?>
                        <div class="card mb-4">
                            <a href="detail.php?id=<?= $article['id']; ?>">
                                <img class="card-img-top" src="admin/img/<?= htmlspecialchars($article['picture'] ?? 'default.jpg'); ?>" alt="<?= htmlspecialchars($article['title'] ?? 'Judul Tidak Tersedia'); ?>" />
                            </a>
                            <div class="card-body">
                                <?php
                                $date = $article['date'] ?? null;
                                $timestamp = $date ? strtotime($date) : null;
                                $formattedDate = $timestamp ? date('F j, Y', $timestamp) : 'Tanggal tidak tersedia';
                                ?>
                                <div class="small text-muted"><?= $formattedDate; ?> oleh <?= htmlspecialchars($article['author'] ?? 'Penulis Tidak Diketahui'); ?></div>
                                <h2 class="card-title"><?= htmlspecialchars($article['title'] ?? 'Tanpa Judul'); ?></h2>
                                <p class="card-text"><?= htmlspecialchars(substr(strip_tags($article['content'] ?? 'Konten tidak tersedia'), 0, 150)); ?>...</p>
                                <a class="btn btn-primary" href="detail.php?id=<?= $article['id']; ?>">Read more →</a>
                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>

            <!-- Sidebar -->
            <div class="col-lg-4">
                <!-- Search -->
                <div class="card mb-4">
                    <div class="card-header">Pencarian</div>
                    <div class="card-body">
                        <form method="GET" action="">
                            <div class="input-group">
                                <input class="form-control" type="text" name="search" value="<?= htmlspecialchars($keyword) ?>" placeholder="Masukkan kata kunci..." aria-label="Search..." />
                                <button class="btn btn-primary" type="submit">Go!</button>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Kategori -->
                <div class="card mb-4">
                    <div class="card-header">Kategori</div>
                    <div class="card-body">
                        <ul class="list-unstyled mb-0">
                            <?php foreach ($categories as $cat): ?>
                                <li>
                                    <a href="kategori_detail.php?id=<?= $cat['id'] ?>">
                                        <?= htmlspecialchars($cat['name']) ?>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>

                <!-- Tentang -->
                <div class="card mb-4">
                    <div class="card-header">Tentang</div>
                    <div class="card-body tentang">
                       Blog ini Berisi Mengenai Penjelasan Keanekaragaman di Indonesia. Komentar dan saran silakan ditinggalkan di halaman kontak.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="py-5 bg-dark mt-5">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; 2025 Blog Artikel | Tugas Pemrograman Web</p>
        </div>
    </footer>

    <!-- Script Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/scripts.js"></script>
</body>

</html>