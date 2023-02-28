CREATE TABLE emp_details 
	(
		EMP_IDNO character(6) NOT NULL,
		EMP_FNAME character(10),
		EMP_LNAME character(10),
		EMP_DEPT character(2),
		PRIMARY KEY(EMP_IDNO),
		
		CONSTRAINT EMP_DEPT FOREIGN KEY (EMP_DEPT)
		REFERENCES public.emp_department (DPT_CODE) MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
		NOT VALID
	);
	
ALTER TABLE IF EXISTS public.emp_details
	OWNER to postgres;