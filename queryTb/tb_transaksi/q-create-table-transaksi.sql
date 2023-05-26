-- CREATE TABLE TRANSAKSI
CREATE TABLE transaksi (
    `id_transaksi` INT NOT NULL AUTO_INCREMENT,
    `id_barang` INT NOT NULL,
    `id_pelanggan` INT NOT NULL,
    `keterangan` VARCHAR(50),
    `tanggal` DATE,
    CONSTRAINT `barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (`id_transaksi`)
);
DESC transaksi;