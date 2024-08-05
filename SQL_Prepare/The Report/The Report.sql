"""
Name        : The Report
Date        : 05/08/2024
Author      : Noureddine Bouyguir
Description : README.md
"""

SELECT (CASE WHEN G.Grade<8 THEN  NULL ELSE S.Name END)  ,
G.Grade 
, S.Marks 
FROM Students AS S, Grades AS G
WHERE S.Marks>=G.Min_Mark AND S.Marks <= G.Max_Mark
ORDER BY G.Grade DESC, S.Name;