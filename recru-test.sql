-- Tworzenie tabeli KONTRAHENCI
CREATE TABLE KONTRAHENCI (
    id INT PRIMARY KEY,
    nip INT,
    nazwa VARCHAR(100),
    sektor_id INT,
    region_id INT,
    data_umowy DATE
);

-- Tworzenie tabeli TRANSAKCJE
CREATE TABLE TRANSAKCJE (
    id INT PRIMARY KEY,
    rodzaj BIT,
    kontrahent_id INT,
    faktura_id INT,
    produkt_id INT
);

-- Tworzenie tabeli FAKTURY
CREATE TABLE FAKTURY (
    id INT PRIMARY KEY,
    wartosc_netto DECIMAL(18,2),
    vat DECIMAL(18,2),
    wartosc_brutto DECIMAL(18,2),
    data_sprzedazy DATE,
    termin_platnosci DATE
);

-- Tworzenie tabeli SLOWNIK
CREATE TABLE SLOWNIK (
    id INT PRIMARY KEY,
    nazwa VARCHAR(100)
);

-- Wstawianie 20 przykładowych rekordów do tabeli KONTRAHENCI
