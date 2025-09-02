CREATE OR REPLACE PROCEDURE generate_feed(
    table_name TEXT,
    num_cols INT,
    num_rows INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    i INT;
    j INT;
    create_table_sql TEXT;
    col_list TEXT := '';
    val_list TEXT;
BEGIN
    -- Drop table if exists
    EXECUTE format('DROP TABLE IF EXISTS %I', table_name);

    -- Build CREATE TABLE dynamically
    create_table_sql := 'CREATE TABLE ' || quote_ident(table_name) || ' (';
    FOR i IN 1..num_cols LOOP
        create_table_sql := create_table_sql || 'col_' || i || ' VARCHAR(255)';
        IF i < num_cols THEN
            create_table_sql := create_table_sql || ', ';
        END IF;
    END LOOP;
    create_table_sql := create_table_sql || ')';
    EXECUTE create_table_sql;

    -- Build column list
    col_list := '';
    FOR i IN 1..num_cols LOOP
        col_list := col_list || 'col_' || i;
        IF i < num_cols THEN
            col_list := col_list || ', ';
        END IF;
    END LOOP;

    -- Insert rows
    FOR j IN 1..num_rows LOOP
        val_list := '';
        FOR i IN 1..num_cols LOOP
            val_list := val_list || quote_literal(substr(md5(random()::text), 1, 8));
            IF i < num_cols THEN
                val_list := val_list || ', ';
            END IF;
        END LOOP;

        EXECUTE 'INSERT INTO ' || quote_ident(table_name) || '(' || col_list || ') VALUES (' || val_list || ')';
    END LOOP;

    -- Duplicate first row if rows exist
    IF num_rows > 0 THEN
        EXECUTE 'INSERT INTO ' || quote_ident(table_name) || '(' || col_list || ') ' ||
                'SELECT ' || col_list || ' FROM ' || quote_ident(table_name) || ' LIMIT 1';
    END IF;

    RAISE NOTICE 'Table % created and populated with % rows and % columns.', table_name, num_rows, num_cols;
END;
$$;