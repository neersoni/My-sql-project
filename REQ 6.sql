SELECT COUNT(*) AS dup_count_feed1
FROM (
    SELECT COUNT(*) 
    FROM Feed1
    GROUP BY col_1, col_2, col_3, col_4, col_5,
             col_6, col_7, col_8, col_9, col_10
    HAVING COUNT(*) > 1
) t;
----------------------------------------------------------
SELECT COUNT(*) AS dup_count_feed2
FROM (
    SELECT COUNT(*) 
    FROM Feed2
    GROUP BY col_1, col_2, col_3, col_4, col_5,
             col_6, col_7, col_8, col_9, col_10,
             col_11, col_12, col_13, col_14, col_15
    HAVING COUNT(*) > 1
) t;
---------------------------------------------------------
SELECT COUNT(*) AS dup_count_feed3
FROM (
    SELECT COUNT(*) 
    FROM Feed3
    GROUP BY col_1, col_2, col_3, col_4, col_5,
             col_6, col_7, col_8, col_9, col_10,
             col_11, col_12, col_13, col_14, col_15,
             col_16, col_17, col_18, col_19, col_20
    HAVING COUNT(*) > 1

) t;
