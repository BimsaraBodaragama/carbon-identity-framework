CREATE OR REPLACE PROCEDURE WSO2_IDN_FLOW_CONTEXT_CLEANUP_RESTORE
BEGIN
    -- ------------------------------------------
    -- DECLARE VARIABLES
    -- ------------------------------------------
    DECLARE rowCount INT;
    DECLARE enableLog SMALLINT;

    -- ------------------------------------------
    -- CONFIGURABLE ATTRIBUTES
    -- ------------------------------------------
    SET enableLog = 1; -- ENABLE LOGGING [DEFAULT : TRUE]

    IF (enableLog = 1) THEN
        CALL DBMS_OUTPUT.PUT_LINE('CLEANUP DATA RESTORATION STARTED .... !');
    END IF;

    SELECT COUNT(*) INTO rowCount
    FROM SYSIBM.SYSTABLES
    WHERE CREATOR = CURRENT SCHEMA AND NAME = 'IDN_FLOW_CONTEXT_STORE';

    IF (rowCount = 1) THEN
        INSERT INTO IDN_FLOW_CONTEXT_STORE (ID, TENANT_ID, FLOW_TYPE, CREATED_AT, EXPIRES_AT, FLOW_STATE_JSON)
        SELECT A.ID, A.TENANT_ID, A.FLOW_TYPE, A.CREATED_AT, A.EXPIRES_AT, A.FLOW_STATE_JSON
        FROM BAK_IDN_FLOW_CONTEXT_STORE A
        LEFT JOIN IDN_FLOW_CONTEXT_STORE B ON A.ID = B.ID
        WHERE B.ID IS NULL;

        GET DIAGNOSTICS rowCount = ROW_COUNT;

        IF (enableLog = 1) THEN
            CALL DBMS_OUTPUT.PUT_LINE('CLEANUP DATA RESTORATION COMPLETED ON IDN_FLOW_CONTEXT_STORE');
        END IF;
    END IF;

    IF (enableLog = 1) THEN
        CALL DBMS_OUTPUT.PUT_LINE('CLEANUP DATA RESTORATION COMPLETED .... !');
    END IF;
END/
