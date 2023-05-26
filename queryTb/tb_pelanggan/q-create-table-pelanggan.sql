-- CREATE TABLE PELANGGAN
CREATE TABLE pelanggan (
    `id_pelanggan` INT NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(50) NOT NULL,
    `jk` VARCHAR(50) NOT NULL,
    `no_telp` VARCHAR(50) NOT NULL,
    `alamat` TEXT NOT NULL,
    PRIMARY KEY (`id_pelanggan`)
);
DESC pelanggan;