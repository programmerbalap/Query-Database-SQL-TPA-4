-- SELECT ALL transaksi
SELECT transaksi.id_transaksi AS ID,  barang.nama AS BARANG, pelanggan.nama AS PELANGGAN, transaksi.keterangan AS KETERANGAN, transaksi.tanggal AS TANGGAL
FROM transaksi
INNER JOIN barang ON barang.id_barang = transaksi.id_barang
INNER JOIN pelanggan ON pelanggan.id_pelanggan = transaksi.id_pelanggan
ORDER BY id_transaksi;