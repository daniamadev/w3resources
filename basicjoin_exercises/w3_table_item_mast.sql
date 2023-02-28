CREATE TABLE item_mast
	(
		PRO_ID character(3) NOT NULL,
		PRO_NAME character(20),
		PRO_PRICE numeric(16,2),
		PRO_COM character(2),
		PRIMARY KEY(PRO_ID),
		
		CONSTRAINT PRO_COM FOREIGN KEY(PRO_COM)
		REFERENCES public.company_mast (COM_ID) MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
		NOT VALID
	);
	
ALTER TABLE IF EXISTS public.item_mast
	OWNER to postgres;