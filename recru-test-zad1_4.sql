SELECT 
    k.nip AS 'NIP-bud',
    k.nazwa AS 'Nazwa-bud',
    s.nazwa
FROM
    kontrahenci k
JOIN
    slownik s ON k.sektor_id = s.id
WHERE
    k.nazwa LIKE '%bud%' AND s.nazwa = 'budownictwo';