DROP TABLE IF EXISTS Hotel;
CREATE TABLE Hotel(
        CodeH     Integer Auto_increment,
        NomH     Varchar (25),
        Adresse     Varchar (25),
        Ville     Varchar (25),
        Telephone     Integer ,
        NombreEtoiles     Integer ,
        NombreChambres     Integer ,
        NomContact     Varchar (25),
        CodeRegion_Region    Integer Auto_increment ,
        PRIMARY KEY (CodeH)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS Region;
CREATE TABLE Region(
        CodeRegion    Integer Auto_increment ,
        Libelle     Varchar (25),
        PRIMARY KEY (CodeRegion)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS TypeSejour;
CREATE TABLE TypeSejour(
        NumType     Integer Auto_increment,
        LibelleType     Varchar (25),
        PrixNuit     Integer (25),
        PRIMARY KEY (NumType)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS Client;
CREATE TABLE Client(
        CodeC    Integer Auto_increment,
        Nom     Varchar (25),
        Prenom     Varchar (25),
        Mail     Varchar (25),
        Adresse     Varchar (25),
        Pays     Varchar (25),
        PRIMARY KEY (CodeC)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS Reservation;
CREATE TABLE Reservation(
        CodeRes     Integer Auto_increment,
        Montant     Integer ,
        DateDebut     Date ,
        DateFin     Date ,
        CodeH_Hotel     Integer,
        NumType_TypeSejour     Integer,
        PRIMARY KEY (CodeRes)
)ENGINE=InnoDB;



ALTER TABLE Hotel ADD CONSTRAINT FK_Hotel_CodeRegion_Region FOREIGN KEY (CodeRegion_Region) REFERENCES Region(CodeRegion);
ALTER TABLE Reservation ADD CONSTRAINT FK_Reservation_CodeH_Hotel FOREIGN KEY (CodeH_Hotel) REFERENCES Hotel(CodeH);
ALTER TABLE Reservation ADD CONSTRAINT FK_Reservation_NumType_TypeSejour FOREIGN KEY (NumType_TypeSejour) REFERENCES TypeSejour(NumType);
