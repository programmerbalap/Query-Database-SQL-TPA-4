-- SELECT ALL BARANG
SELECT b.nama AS BARANG, b.harga AS HARGA, b.stok AS STOK, kb.nama AS KATEGORI FROM barang b
INNER JOIN kategori_barang kb ON kb.id_kategori = b.id_kategori;