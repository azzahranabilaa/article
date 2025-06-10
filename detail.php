<?php
require 'admin/functions.php';

// Validasi ID artikel dari parameter URL
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    die("ID artikel tidak valid.");
}

$id = intval($_GET['id']);

// Fungsi untuk ambil artikel berdasarkan ID
function getArticleById($id)
{
    $sql = "SELECT 
                a.id,
                a.title,
                a.date,
                a.content,
                a.picture,
                au.nickname AS author,
                c.name AS category,
                c.id AS category_id
            FROM article a
            LEFT JOIN article_author aa ON a.id = aa.article_id
            LEFT JOIN author au ON aa.author_id = au.id
            LEFT JOIN article_category ac ON a.id = ac.article_id
            LEFT JOIN category c ON ac.category_id = c.id
            WHERE a.id = $id
            LIMIT 1";

    $result = query($sql);
    return count($result) > 0 ? $result[0] : null;
}

$article = getArticleById($id);
if (!$article) {
    die("Artikel tidak ditemukan.");
}

// Ambil semua kategori untuk sidebar
$categories = query("SELECT id, name FROM category");

// Ambil keyword search jika ada (untuk pre-fill search input)
$keyword = isset($_GET['search']) ? trim($_GET['search']) : '';

// Ambil artikel terkait kategori, kecuali artikel ini sendiri
$relatedArticles = query("
    SELECT a.id, a.title 
    FROM article a
    JOIN article_category ac ON a.id = ac.article_id
    WHERE ac.category_id = {$article['category_id']}
    AND a.id != $id
    ORDER BY a.date DESC
    LIMIT 5
");
?>
<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title><?= htmlspecialchars($article['title']) ?> - Blog Post</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap) -->
    <link href="umum/css/styles.css" rel="stylesheet" />
</head>

<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="index.php">Wonderful Indonesia</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span></button>
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

    <!-- Page content-->
    <div class="container mt-5">
        <div class="row">
            <!-- Main Content -->
            <div class="col-lg-8">
                <article>
                    <!-- Post header-->
                    <header class="mb-4">
                        <h1 class="fw-bolder mb-1"><?= htmlspecialchars($article['title']) ?></h1>
                        <div class="text-muted fst-italic mb-2">
                            Posted on <?= date('F j, Y', strtotime($article['date'])) ?>
                            by <?= htmlspecialchars($article['author'] ?? 'Unknown Author') ?>
                        </div>
                        <?php if (!empty($article['category'])): ?>
                            <a class="badge bg-secondary text-decoration-none link-light" href="kategori_detail.php?id=<?= $article['category_id'] ?>">
                                <?= htmlspecialchars($article['category']) ?>
                            </a>
                        <?php endif; ?>
                    </header>

                    <!-- Preview image figure-->
                    <?php if (!empty($article['picture'])): ?>
                        <figure class="mb-4">
                            <img class="img-fluid rounded" src="admin/img/<?= htmlspecialchars($article['picture']) ?>" alt="<?= htmlspecialchars($article['title']) ?>" style="width: 100%; max-height: 400px; object-fit: cover;" />
                        </figure>
                    <?php endif; ?>

                    <!-- Post content-->
                    <section class="mb-5 fs-5">
                        <?= $article['content'] ?>
                    </section>
                </article>
            </div>

            <!-- Sidebar Widgets -->
            <div class="col-lg-4">
                <!-- Search widget-->
                <div class="card mb-4">
                    <div class="card-header">Pencarian</div>
                    <div class="card-body">
                        <form method="GET" action="">
                            <input type="hidden" name="id" value="<?= $article['id'] ?>" />
                            <div class="input-group">
                                <input class="form-control" type="text" name="search" value="<?= htmlspecialchars($keyword) ?>" placeholder="Masukkan kata kunci..." aria-label="Search..." />
                                <button class="btn btn-primary" type="submit">Go!</button>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Categories widget-->
                <div class="card mb-4">
                    <div class="card-header">Kategori</div>
                    <div class="card-body">
                        <ul class="list-unstyled mb-0">
                            <?php foreach ($categories as $cat): ?>
                                <li><a href="kategori_detail.php?id=<?= $cat['id'] ?>" class="text-decoration-none"><?= htmlspecialchars($cat['name']) ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>

                <!-- Related Articles widget -->
                <div class="card mb-4">
                    <div class="card-header">Artikel Terkait Kategori <?= htmlspecialchars($article['category']) ?></div>
                    <div class="card-body">
                        <?php if (count($relatedArticles) > 0): ?>
                            <ul class="list-unstyled mb-0">
                                <?php foreach ($relatedArticles as $rel): ?>
                                    <li><a href="detail.php?id=<?= $rel['id'] ?>" class="text-decoration-none"><?= htmlspecialchars($rel['title']) ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        <?php else: ?>
                            <p><em>Tidak ada artikel terkait.</em></p>
                        <?php endif; ?>
                    </div>
                </div>

                <!-- Side widget-->
                <div class="card mb-4">
                    <div class="card-header">Tentang</div>
                    <div class="card-body">
                        Sekedar tempat wisata seputar Indonesia. Komentar dan saran silakan ditinggalkan di halaman kontak.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; 2025 Blog Artikel | Tugas Pemrograman Web</p>
        </div>
    </footer>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>