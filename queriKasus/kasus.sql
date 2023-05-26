-- SATU ORANG MEMBELI 3 BARANG BERBEDA
SELECT transaksi.id_transaksi AS ID, barang.nama AS BARANG, pelanggan.nama AS PELANGGAN, transaksi.keterangan AS KETERANGAN, transaksi.tanggal AS TANGGAL
FROM transaksi
RIGHT JOIN barang ON barang.id_barang = transaksi.id_barang
RIGHT JOIN pelanggan ON pelanggan.id_pelanggan = transaksi.id_pelanggan
WHERE pelanggan.id_pelanggan = 1
GROUP BY transaksi.id_barang
LIMIT 3;


-- SELECT 3 BARANG YANG BANYAK PEMINATNYA
SELECT barang.nama AS BARANG
FROM transaksi
INNER JOIN barang ON barang.id_barang = transaksi.id_barang
GROUP BY barang.id_barang
ORDER BY count(barang.id_barang) DESC
LIMIT 3;


-- SELECT KATEGORI YANG PALING BANYAK BARANGNYA
SELECT b.nama AS BARANG, b.harga AS HARGA, b.stok AS STOK, kb.nama AS KATEGORI FROM barang b
INNER JOIN kategori_barang kb ON kb.id_kategori = b.id_kategori
GROUP BY kb.id_kategori
ORDER BY COUNT(*) DESC
LIMIT 1;



-- NOMINAL RATA RATA TRANSAKSI PELANGGAN DALAM 1 BULAN TERAKHIR
SELECT AVG(total_bayar) AS NominalRataRata
FROM pembayaran
WHERE tanggal_bayar >= DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH);



-- NAMA PELANGGAN PALING BANYAK BERLANGGANAN
SELECT pelanggan.nama AS PELANGGAN_PALING_TINGGI
FROM transaksi
INNER JOIN pelanggan ON pelanggan.id_pelanggan = transaksi.id_pelanggan
GROUP BY pelanggan.id_pelanggan
ORDER BY count(pelanggan.id_pelanggan) DESC
LIMIT 1;





