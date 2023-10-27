SELECT
    s.nazwa AS 'Nazwa produktu',
    MONTHNAME(F.data_sprzedazy) AS 'Miesiąc sprzedaży',
    ROUND(SUM(F.wartosc_netto), 1) AS 'Sprzedaż'
FROM
    FAKTURY F
JOIN
    TRANSAKCJE T ON F.id = T.faktura_id
JOIN
    SLOWNIK S ON t.produkt_id = s.nazwa
WHERE
    YEAR(F.data_sprzedazy) = 2022
GROUP BY
    s.nazwa, MONTHNAME(F.data_sprzedazy)
ORDER BY
    s.nazwa, MONTH(F.data_sprzedazy);