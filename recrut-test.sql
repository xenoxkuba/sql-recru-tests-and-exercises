SELECT
    k.nazwa AS NazwaKontrahenta,
    ROUND(SUM(F.wartosc_netto)) AS SumaWartosciNetto,
    r.nazwa AS NazwaRegionu
FROM
    kontrahenci k
JOIN
    transakcje t ON k.id = T.kontrahent_id
JOIN
    faktury f ON T.faktura_id = f.id
JOIN
    slownik r ON k.region_id = r.id
WHERE
    t.rodzaj = 1
    AND YEAR(F.data_sprzedazy) = 2022
GROUP BY
    k.id, k.nazwa, r.nazwa
ORDER BY
    SumaWartosciNetto DESC
LIMIT 3;
