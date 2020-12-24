DELETE FROM teacher
 WHERE id NOT IN (SELECT * 
                    FROM (SELECT min(t.id)
                            FROM teacher t
                        GROUP BY t.name) x);
						
DELETE t1 FROM teacher t1, teacher t2 WHERE t1.id > t2.id AND t1.name = t2.name;

DELETE t1 FROM teacher t1
INNER JOIN teacher t2
WHERE
    t1.id > t2.id
    AND t1.name = t2.name;
	
DELETE FROM teacher
 WHERE id NOT IN (SELECT * 
                    FROM (SELECT max(t.id)
                            FROM teacher t
                        GROUP BY t.name) x);

DELETE t1 FROM teacher t1, teacher t2 WHERE t1.id < t2.id AND t1.name = t2.name;

DELETE t1 FROM teacher t1
INNER JOIN teacher t2
WHERE
    t1.id < t2.id
    AND t1.name = t2.name;

DELETE FROM teacher 
WHERE 
	id IN (
	SELECT 
		id 
	FROM (
		SELECT 
			id,
			ROW_NUMBER() OVER (
				PARTITION BY name
				ORDER BY name) AS row_num
		FROM 
			teacher
		
	) t
    WHERE row_num > 1
);