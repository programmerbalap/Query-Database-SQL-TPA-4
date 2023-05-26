-- SELECT ALL TRANSAKSI BY PELANGGAN
SELECT transaksi.id_transaksi AS ID, barang.nama AS BARANG, pelanggan.nama AS PELANGGAN, transaksi.keterangan AS KETERANGAN, transaksi.tanggal AS TANGGAL
FROM transaksi
RIGHT JOIN barang ON barang.id_barang = transaksi.id_barang
RIGHT JOIN pelanggan ON pelanggan.id_pelanggan = transaksi.id_pelanggan
WHERE pelanggan.id_pelanggan = 1;