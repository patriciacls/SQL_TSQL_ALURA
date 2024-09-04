SELECT ROUND(((500-100-1) * RAND() +100), 0)

CREATE FUNCTION NumeroAleatorio(@VAL_MIN INT, @VAL_MAX INT)
RETURNS INT
AS
BEGIN
	DECLARE @ALEATORIO INT
	DECLARE @VALOR_ALEATORIO FLOAT
	SELECT @VALOR_ALEATORIO = VALOR_ALEATORIO FROM VW_ALEATORIO
	SET  @ALEATORIO =  ROUND (((@VAL_MAX - @VAL_MIN - 1) * @VALOR_ALEATORIO +@VAL_MIN),0)
	RETURN @ALEATORIO
END;	

