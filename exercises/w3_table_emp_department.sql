CREATE TABLE emp_department
	(
		DPT_CODE character(2) NOT NULL,
		DPT_NAME character(10),
		DPT_ALLOTMENT integer,
		PRIMARY KEY(DPT_CODE)
	);
	
ALTER TABLE IF EXISTS public.emp_department
OWNER to postgres;