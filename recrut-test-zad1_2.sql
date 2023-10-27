(SELECT
    k.nip AS dostawca,
    SUM(f.wartosc_netto) AS wartosc
FROM
    kontrahenci k
JOIN
    transakcje t ON k.id = t.kontrahent_id
JOIN
    faktury f ON t.faktura_id = f.id
WHERE
    t.rodzaj = 0
GROUP BY
    k.id, k.nazwa
ORDER BY
    wartosc DESC
LIMIT 2, 1)
UNION
(SELECT
    k.nip AS dostawca,
    SUM(f.wartosc_netto) AS wartosc
FROM
    kontrahenci k
JOIN
    transakcje t ON k.id = T.kontrahent_id
JOIN
    faktury f ON t.faktura_id = f.id
WHERE
    t.rodzaj = 0
GROUP BY
    k.id, k.nazwa
ORDER BY
    wartosc
LIMIT 2, 1);