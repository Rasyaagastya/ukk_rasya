<?php
include("../config/config.php");
session_start();

if(!isset($_SESSION["signIn"]) ) {
  header("Location: ../sign/member/sign_in.php");
  exit;
}

$nisn = $_SESSION['member']['nisn'];
$result = pengembalianBuku($nisn);

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/dbadmin.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://kit.fontawesome.com/de8de52639.js" crossorigin="anonymous"></script>
     <title>Member Dashboard</title>
     <link rel="icon" href="../assets/book.png" type="image/png">
</head>
<style>
  @media screen and(max-width: 600px) {
    .d-flex flex-wrap gap-2 cardImg a img {
      width: 200px;
    }
  }
</style>
  <body>
     <nav class="navbar fixed-top  shadow-sm">
      <div class="container-fluid p-1">
        <a class="navbar-brand" href="#">
          <img src="../assets/rasya.png" alt="logo" width="120px" height="50px">
        </a>
  
        <div class="dropdown">
          <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="../assets/user.png" alt="memberLogo" width="30px">
          </button>
        <ul style="margin-left: -7rem;" class="dropdown-menu position-absolute mt-2 p-2">
          <li>
            <a class="dropdown-item text-center" href="#">
            <img src="../assets/user.png" alt="adminLogo" width="30px">
            </a>
          </li>
          <li>
            <a class="dropdown-item text-center text-secondary" href="#"> </a>
            <a class="dropdown-item text-center mb-2" href="#">Siswa</a>
          </li>
          <li>
            <a class="dropdown-item text-center p-2 bg-danger text-light rounded" href="signOut.php">Sign Out <i class="fa-solid fa-right-to-bracket"></i></a>
          </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="mt-5 p-4">
      <?php
      // Mendapatkan tanggal dan waktu saat ini
      $date = date('Y-m-d H:i:s'); // Format tanggal dan waktu default (tahun-bulan-tanggal jam:menit:detik)
      // Mendapatkan hari dalam format teks (e.g., Senin, Selasa, ...)
      $day = date('l');
      // Mendapatkan tanggal dalam format 1 hingga 31
      $dayOfMonth = date('d');
      // Mendapatkan bulan dalam format teks (e.g., Januari, Februari, ...)
      $month = date('F');
      // Mendapatkan tahun dalam format 4 digit (e.g., 2023)
      $year = date('Y');
      ?>
      
      <h1 class="mt-5 fw-bold">Dashboard - <span class="fs-4 "> <?php echo $day. " ". $dayOfMonth." ". " ". $month. " ". $year; ?> </span></h1>
      <div class="alert alert-success" role="alert">Selamat datang Customer </div>
      
    <div class="mt-3 p-3">
      <div class="mt-2 mb-4">
       <h3 class="mb-3">Layanan Perpustakaan yang tersedia</h3>
      </div>
        <div class="d-flex flex-wrap justify-content-center gap-2">
        <div class="cardImg">
          <a href="buku/daftarBuku.php">
            <img src="../assets/dashboardCardMember/6.png" alt="daftar buku" class="imeg" style="max-width: 100%;" width="300px">
          </a>
        </div>
        <div class="cardImg">
          <a href="formPeminjaman/TransaksiPeminjaman.php">
          <img src="../assets/dashboardCardMember/3.png" alt="daftar buku" class="imeg" style="max-width: 100%;" width="300px">
          </a>
        </div>

        <div class="cardImg">
          <a href="formPeminjaman/TransaksiPengembalian.php">
            <img src="../assets/dashboardCardMember/4.png" alt="daftar buku" class="imeg" style="max-width: 100%;" width="300px">
          </a>
        </div>
       </div>

    </div>
  </div> 
      
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>