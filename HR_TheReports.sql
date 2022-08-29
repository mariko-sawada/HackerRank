SELECT
CASE
 WHEN g.Grade BETWEEN 8 AND 10 THEN s.Name
 ELSE "NULL"
END
, g.Grade, s.Marks
FROM Students s JOIN Grades g
WHERE s.Marks >= Min_Mark AND s.Marks <= Max_Mark
ORDER BY g.Grade DESC, s.Name,s.Marks
