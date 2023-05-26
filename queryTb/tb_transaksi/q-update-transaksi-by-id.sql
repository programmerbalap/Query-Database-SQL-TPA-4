-- UPDATE BY ID TRANSAKSI
UPDATE transaksi
SET id_barang = 1, id_pelanggan = 2, keterangan = 'Sudah dibayar', tanggal = '2023-05-22'
WHERE id_transaksi = 1;