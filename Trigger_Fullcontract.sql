DELIMITER //
CREATE TRIGGER TG_Full_Contract_INSERT_AUTOCODE
BEFORE INSERT ON `dbo.full_contract` FOR EACH ROW
BEGIN
    DECLARE NAMHT_PARAM VARCHAR(2);
    DECLARE THANGHT_PARAM VARCHAR(2);
    DECLARE MSHD_PREFIX_PARAM VARCHAR(4);
    DECLARE MAX_VAL INT;

    -- Get the current maximum value for the first 4 digits
    SELECT COALESCE(MAX(CAST(SUBSTRING(Full_Contract_Code, 1, 4) AS SIGNED)), 0) INTO MAX_VAL
    FROM `dbo.full_contract`;

    -- Increment the value
    SET MAX_VAL = MAX_VAL + 1;

    -- Ensure the value is padded with zeros
    SET MSHD_PREFIX_PARAM = LPAD(MAX_VAL, 4, '0');

    -- Set NAMHT_PARAM as the last two digits of the current year
    SET NAMHT_PARAM = RIGHT(YEAR(NOW()), 2);

    -- Set THANGHT_PARAM as the current month
    SET THANGHT_PARAM = RIGHT('00' + CAST(MONTH(NOW()) AS VARCHAR(2)), 2);

    -- Set the Full_Contract_Code value directly in the NEW record
    SET NEW.Full_Contract_Code = CONCAT(LPAD(MSHD_PREFIX_PARAM, 4, '0'), 'BDS', THANGHT_PARAM, NAMHT_PARAM);

END;
//
DELIMITER ;