<?php
require 'admin/functions.php';

// Ambil id kategori dari URL
$category_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

$keyword = isset($_GET['search']) ? trim($_GET['search']) : '';

// Ambil nama kategori
$category = query("SELECT name FROM category WHERE id = $category_id");
$category_name = $category ? $category[0]['name'] : 'Kategori tidak ditemukan';

// Ambil artikel berdasarkan kategori (pakai join)
if ($category_id > 0) {
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
            LEFT JOIN article_category ac ON a.id = ac.article_id
            LEFT JOIN article_author aa ON a.id = aa.article_id
            LEFT JOIN author au ON aa.author_id = au.id
            WHERE ac.category_id = $category_id 
              AND (a.title LIKE '%$keyword_escaped%' OR a.content LIKE '%$keyword_escaped%')
            ORDER BY a.date DESC
        ");
    } else {
        $articles = query("
            SELECT 
                a.id,
                a.title,
                a.date,
                a.content,
                a.picture,
                au.nickname AS author
            FROM article a
            LEFT JOIN article_category ac ON a.id = ac.article_id
            LEFT JOIN article_author aa ON a.id = aa.article_id
            LEFT JOIN author au ON aa.author_id = au.id
            WHERE ac.category_id = $category_id
            ORDER BY a.date DESC
        ");
    }
} else {
    $articles = [];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Artikel Kategori: <?= htmlspecialchars($category_name) ?></title>
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        .tentang {
            text-align: justify;
        }
    </style>
</head>

<body>
    <!-- Navbar (sama seperti di index.php) -->
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
                <h1 class="fw-bolder">Artikel Kategori: <?= htmlspecialchars($category_name) ?></h1>
                <p class="lead mb-0">Daftar artikel untuk kategori ini.</p>
            </div>
        </div>
    </header>

    <!-- Konten -->
    <div class="container">
        <div class="row">
            <!-- Artikel -->
            <div class="col-lg-8">
                <?php if (count($articles) === 0): ?>
                    <p>Tidak ada artikel untuk ditampilkan pada kategori ini.</p>
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
                            <input type="hidden" name="id" value="<?= $category_id ?>" />
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
                            <?php
                            $categories = query("SELECT id, name FROM category");
                            foreach ($categories as $cat):
                            ?>
                                <li><a href="kategori_detail.php?id=<?= $cat['id'] ?>"><?= htmlspecialchars($cat['name']) ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>

                <!-- Tentang -->
                <div class="card mb-4">
                    <div class="card-header">Tentang</div>
                    <div class="card-body tentang">
                        Sekedar tempat wisata seputar Indonesia. Komentar dan saran silakan ditinggalkan di halaman kontak.
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
</body>

</html>