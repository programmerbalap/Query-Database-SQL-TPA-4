-- CREATE TABLE PEMBAYARAN
CREATE TABLE pembayaran (
    `id_pembayaraan` INT NOT NULL AUTO_INCREMENT,
    `id_transaksi` INT NOT NULL,
    `total_bayar` INT NOT NULL,
    `tanggal_bayar` DATE,
    CONSTRAINT `transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (`id_pembayaraan`)
);
DESC pembayaran;