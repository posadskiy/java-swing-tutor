-- Flyway migration: Remove lesson_number and lesson_name from lesson table
-- lesson_name should be retrieved from lesson_translation table based on selected language
-- lesson_number is removed completely

-- ============================================================================
-- ALTER LESSON TABLE
-- ============================================================================

-- Remove lesson_number column
ALTER TABLE lesson
    DROP COLUMN IF EXISTS lesson_number;

-- Remove lesson_name column
ALTER TABLE lesson
    DROP COLUMN IF EXISTS lesson_name;
