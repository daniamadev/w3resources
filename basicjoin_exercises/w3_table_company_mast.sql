CREATE TABLE public.company_mast 
	(
	COM_ID character(2) NOT NULL,
	COM_NAME character(10),
	PRIMARY KEY(COM_ID)
	);
	
ALTER TABLE IF EXISTS public.company_mast
	OWNER to postgres;