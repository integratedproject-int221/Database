CREATE TABLE Brands (
    brandId    VARCHAR(10) NOT NULL,
    brandName  VARCHAR(20) NOT NULL
);

ALTER TABLE Brands ADD CONSTRAINT Brands_pk PRIMARY KEY ( brandId );

CREATE TABLE Colors (
    colorId    VARCHAR(10) NOT NULL,
    colorName  VARCHAR(20) NOT NULL,
    CodeColor  VARCHAR(10) NOT NULL
);

ALTER TABLE Colors ADD CONSTRAINT Colors_pk PRIMARY KEY ( colorId );

CREATE TABLE Products (
    productId           INT NOT NULL AUTO_INCREMENT,
    productName          VARCHAR(60) NOT NULL UNIQUE,
    productType          VARCHAR(20) NOT NULL,
    productDescription   VARCHAR(300),
    productPrice         DOUBLE NOT NULL,
    productGender        VARCHAR(10) NOT NULL,
    productManufactured  DATE NOT NULL,
    Brands_brandId        VARCHAR(10) NOT NULL,
    CONSTRAINT Products_pk PRIMARY KEY ( productId )
);


CREATE TABLE Products_Colors (
    Products_productId  INT NOT NULL,
    Colors_colorId      VARCHAR(10) NOT NULL
);

ALTER TABLE Products_Colors ADD CONSTRAINT Products_Colors_pk PRIMARY KEY ( Products_productId,
                                                                      Colors_colorId );

ALTER TABLE Products
    ADD CONSTRAINT Products_Brands_fk FOREIGN KEY ( Brands_brandId )
        REFERENCES Brands ( brandId );

ALTER TABLE Products_Colors
    ADD CONSTRAINT Products_Colors_Colors_fk FOREIGN KEY ( Colors_colorId )
        REFERENCES Colors ( colorId );

ALTER TABLE Products_Colors
    ADD CONSTRAINT Products_Colors_Products_fk FOREIGN KEY ( Products_productId )
        REFERENCES Products ( productId );
