CREATE TABLE public.salesman
(
	SALESMAN_ID CHARACTER(6) NOT NULL,
	SALESMAN_NAME CHARACTER(40),
	CITY CHARACTER(20),
	COMISSION NUMERIC(2,2),
	PRIMARY KEY(SALESMAN_ID)
);

ALTER TABLE IF EXISTS public.salesman
    OWNER to postgres;