
    DECLARE @Q INT ;
  
	  SET @Q=100;
	  

 
   BEGIN
     IF (@Q>=100)
         selecT @Q;
     ELSE
        select  'false';
    END 
 SELECT
    CASE
 WHEN @Q>=100 THEN 'correct'
ELSE 
   'incorrect'

END
   
   