"""
Name        : Weather Observation Station 20
Date        : 05/08/2024
Author      : Noureddine Bouyguir
Description : A median is defined as a number separating the
              higher half of a data set from the lower half. 
              Query the median of the Northern Latitudes (LAT_N)
              from STATION and round your answer to 4 decimal places.
"""

SELECT ROUND(STA.LAT_N, 4) FROM STATION AS STA
WHERE (SELECT ROUND(COUNT(STA1.ID)/2) - 1 FROM STATION AS STA1) = 
        (SELECT COUNT(STA2.ID) FROM STATION AS STA2 WHERE STA2.LAT_N > STA1.LAT_N);