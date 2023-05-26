-- CREATE TABLE BARANG
CREATE TABLE barang (
    `id_barang` INT NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(50) NOT NULL,
    `harga` INT NOT NULL,
    `stok` INT NOT NULL,
    `id_kategori` INT NOT NULL,
    CONSTRAINT `kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_barang` (`id_kategori`) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (`id_barang`)
);
DESC barang;