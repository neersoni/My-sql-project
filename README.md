# My-sql-project
# SQL Automation Project: Data Feed Generation, Duplicate Management & Testing
## Introduction
The project focuses on building a fully automated SQL workflow to:

Generate random data input files (Feed-1, Feed-2, Feed-3)

Identify and remove duplicates

Compare data across feeds

Build test plans and automate them

Document the entire end-to-end process

This ensures data integrity, consistency, and automation in SQL-based data management.
-----------------------------------------------------------------------------------------------------------------
# Objectives


Automate data feed creation with different structures.

Ensure no duplicate data persists across feeds.

Enable cross-feed data comparison.

Provide manual and automated test validation.

Deliver a professional project report with results.

-------------------------------------------------------------------------------------------------------------
# Approach Used
##  Step 1 – Random Data Feed Generation
Feed-1 → 10 columns × 10 rows

Feed-2 → 15 columns × 15 rows

Feed-3 → 20 columns × 20 rows

Data was generated using SQL scripts with random functions (random(), md5(), etc.).

## Step 2 – Automation

stored procedure was created with parameters:

Feed Name

Number of Rows

This procedure dynamically generates tables and populates them with random data.

## Duplicate Identification

SQL queries were written to identify duplicate rows in Feed-1, Feed-2, and Feed-3.

Duplicate rows were exported to an output file named duplicates.

## Step 4 – Duplicate Removal

Scripts were created to:

Delete duplicates

Keep only unique rows

Tables were updated with clean data.

## Step 5 – Validation

Duplicate detection script was re-executed.

Expected result = Zero duplicates found.

## Step 6 – Data Comparison

SQL script was written to compare data from Feed-2 & Feed-3 against Feed-1.

Results of matched/unmatched rows were exported into comparison output file.

## Step 7 – Test Automation

Test cases were automated using SQL scripts.

Could also be extended to Python + SQL integration for automated execution and reporting.

## Key Results

Successfully automated data generation.

Created a robust duplicate detection & cleaning mechanism.

Enabled cross-feed comparison.

Built a structured test plan for validation.

Documented everything with step-by-step execution flow.

## Conclusion

This project demonstrates SQL automation capabilities for handling real-world data quality problems.
It integrates:

Automation (dynamic feed creation)

Data integrity management (duplicates removal)

Validation (manual & automated tests)

The approach ensures scalability (works for any feed size) and reliability (clean & validated output).
