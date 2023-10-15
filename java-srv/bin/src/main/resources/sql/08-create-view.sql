CREATE VIEW breed_count (id, breed, itemCount)
    AS SELECT c.id, c.breed,
    CASE
    WHEN a.breedId=1 THEN COUNT(a.breedId)
    WHEN a.breedId=2 THEN COUNT(a.breedId)
    WHEN a.breedId=3 THEN COUNT(a.breedId)
    WHEN a.breedId=4 THEN COUNT(a.breedId)
    ELSE COUNT(NULL)
    END
    FROM master.dbo.dog as a
    JOIN master.dbo.breedLookup as c ON c.id = a.breedId
    GROUP BY a.breedId
