-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2024 pada 09.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_galeri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggalbuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggalbuat`, `userid`) VALUES
(5, 'MOBIL', 'WALPAPER MOBIL', '2024-02-17', 1),
(6, 'MOTOR', 'WALPAPER MOTOR', '2024-02-17', 1),
(7, 'KOMPUTER', 'SEPUTAR FOTO KOMPUTER', '2024-02-17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(14, 'WALPAPER MOBIL', 'SEPUTAR MOBIL', '2024-02-27', '341923129-download (4).jpg', 5, 1),
(15, 'WALPAPER MOBIL', 'SEPUTAR MOBIL', '2024-02-26', '120265074-Range Rover Evoque.jpg', 5, 1),
(16, 'WALPAPER MOBIL', 'SEPUTAR MOBIL', '2024-02-26', '2044194716-download (3).jpg', 5, 1),
(17, 'WALPAPER MOBIL', 'SEPUTAR MOBIL', '2024-02-26', '1886318353-Jaguar promises supplying Baby Range Rover will demand thousands of jobs.jpg', 5, 1),
(19, 'WALPAPER MOTOR', 'SEPUTAR MOTOR', '2024-02-26', '675138743-BMW S1000RR Wallpaper 4K.jpg', 6, 1),
(20, 'WALPAPER MOTOR', 'SEPUTAR MOTOR', '2024-02-26', '2137780480-Marc Marquez, Repsol Honda Team at Catalan GP High-Res Professional Motorsports Photography.jpg', 6, 1),
(23, 'WALPAPER MOTOR', 'SEPUTAR MOTOR', '2024-02-26', '1190609770-Sepang test 2019.jpg', 6, 1),
(24, 'WALPAPER MOTOR', 'SEPUTAR MOTOR', '2024-02-26', '118580391-2019å¹´åž‹ãƒ›ãƒ³ãƒ€RC213VãŒâ€œãƒžãƒ«ã‚±ã‚¹ã‚¹ãƒšã‚·ãƒ£ãƒ«â€ã®ç†ç”±ã€‚æ€§æ ¼ã®æ‚ªã•æ„Ÿã˜ãŸãƒžãƒ¬ãƒ¼ã‚·ã‚¢GPï¼ãƒŽãƒ–é’æœ¨ã®çŸ¥ã£ã¦å¾—ã™ã‚‹MotoGP - autosport web.jpg', 6, 1),
(25, 'WALPAPER KOMPUTER', 'SEPUTAR KOMPUTER', '2024-02-26', '1960741225-Ð¡Ñ‚ÑƒÐ´Ð¸Ñ.jpg', 7, 1),
(26, 'WALPAPER KOMPUTER', 'SEPUTAR KOMPUTER', '2024-02-26', '1457570029-download (5).jpg', 7, 1),
(27, 'WALPAPER KOMPUTER', 'SEPUTAR KOMPUTER', '2024-02-26', '1402107185-pexels-monoar-rahman-114907.jpg', 7, 1),
(28, 'WALPAPER KOMPUTER', 'SEPUTAR KOMPUTER', '2024-02-26', '890518872-IKEA KARLBY L-Shaped Battlestation.jpg', 7, 1),
(29, 'WALPAPER KOMPUTER', 'SEPUTAR KOMPUTER', '2024-02-26', '987272081-Eternal LEDs.jpg', 7, 1),
(31, 'WALPAPER KOMPUTER', 'SEPUTAR KOMPUTER', '2024-02-26', '725413076-I am really happy today_ Never knew this day would be possible _3.jpg', 7, 1),
(32, 'WALPAPER MOBIL', 'SEPUTAR MOBIL', '2024-02-26', '1268977135-HD wallpaper_ Red Bull, Red Bull Racing, Max Verstappen, Aston Martin, Honda.jpg', 5, 1),
(34, 'WALPAPER MOTOR', 'SEPUTAR MOTOR', '2024-02-26', '549788724-download (6).jpg', 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(4, 14, 1, 'KEREN', '2024-02-26'),
(5, 14, 1, 'SANGAT BAGUS', '2024-02-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(65, 27, 1, '2024-02-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'alkausar', '202cb962ac59075b964b07152d234b70', 'alkausar10100634@gmail.com', 'FDHZZD', 'NTUJ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
