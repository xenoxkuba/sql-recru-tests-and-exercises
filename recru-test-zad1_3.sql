SELECT K.nazwa AS NazwaKontrahenta
FROM KONTRAHENCI K
JOIN TRANSAKCJE T ON K.id = T.kontrahent_id
JOIN FAKTURY F ON T.faktura_id = F.id
JOIN SLOWNIK S ON K.sektor_id = S.id
WHERE S.nazwa = 'transport'
GROUP BY K.id, K.nazwa
HAVING SUM(F.wartosc_brutto) <= 10 * MIN(F.wartosc_brutto)