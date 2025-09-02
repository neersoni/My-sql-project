DELETE FROM Feed1 a
USING (
    SELECT MIN(ctid) AS keep_ctid, col_1, col_2, col_3, col_4, col_5,
           col_6, col_7, col_8, col_9, col_10
    FROM Feed1
    GROUP BY col_1, col_2, col_3, col_4, col_5,
             col_6, col_7, col_8, col_9, col_10
    HAVING COUNT(*) > 1
) b
WHERE a.col_1 = b.col_1 AND a.col_2 = b.col_2 AND a.col_3 = b.col_3 AND a.col_4 = b.col_4
  AND a.col_5 = b.col_5 AND a.col_6 = b.col_6 AND a.col_7 = b.col_7 AND a.col_8 = b.col_8
  AND a.col_9 = b.col_9 AND a.col_10 = b.col_10
  AND a.ctid <> b.keep_ctid;

-- For Feed2 (15 columns)
DELETE FROM Feed2 a
USING (
    SELECT MIN(ctid) AS keep_ctid, col_1, col_2, col_3, col_4, col_5,
           col_6, col_7, col_8, col_9, col_10,
           col_11, col_12, col_13, col_14, col_15
    FROM Feed2
    GROUP BY col_1, col_2, col_3, col_4, col_5,
             col_6, col_7, col_8, col_9, col_10,
             col_11, col_12, col_13, col_14, col_15
    HAVING COUNT(*) > 1
) b
WHERE a.col_1 = b.col_1 AND a.col_2 = b.col_2 AND a.col_3 = b.col_3 AND a.col_4 = b.col_4
  AND a.col_5 = b.col_5 AND a.col_6 = b.col_6 AND a.col_7 = b.col_7 AND a.col_8 = b.col_8
  AND a.col_9 = b.col_9 AND a.col_10 = b.col_10 AND a.col_11 = b.col_11 AND a.col_12 = b.col_12
  AND a.col_13 = b.col_13 AND a.col_14 = b.col_14 AND a.col_15 = b.col_15
  AND a.ctid <> b.keep_ctid;

-- For Feed3 (20 columns)
DELETE FROM Feed3 a
USING (
    SELECT MIN(ctid) AS keep_ctid, col_1, col_2, col_3, col_4, col_5,
           col_6, col_7, col_8, col_9, col_10,
           col_11, col_12, col_13, col_14, col_15,
           col_16, col_17, col_18, col_19, col_20
    FROM Feed3
    GROUP BY col_1, col_2, col_3, col_4, col_5,
             col_6, col_7, col_8, col_9, col_10,
             col_11, col_12, col_13, col_14, col_15,
             col_16, col_17, col_18, col_19, col_20
    HAVING COUNT(*) > 1
) b
WHERE a.col_1 = b.col_1 AND a.col_2 = b.col_2 AND a.col_3 = b.col_3 AND a.col_4 = b.col_4
  AND a.col_5 = b.col_5 AND a.col_6 = b.col_6 AND a.col_7 = b.col_7 AND a.col_8 = b.col_8
  AND a.col_9 = b.col_9 AND a.col_10 = b.col_10 AND a.col_11 = b.col_11 AND a.col_12 = b.col_12
  AND a.col_13 = b.col_13 AND a.col_14 = b.col_14 AND a.col_15 = b.col_15 AND a.col_16 = b.col_16
  AND a.col_17 = b.col_17 AND a.col_18 = b.col_18 AND a.col_19 = b.col_19 AND a.col_20 = b.col_20
  AND a.ctid <> b.keep_ctid;