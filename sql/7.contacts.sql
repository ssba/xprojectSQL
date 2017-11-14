CREATE SEQUENCE contacts_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE contacts (
  id integer NOT NULL DEFAULT nextval('contacts_id_seq'::regclass) PRIMARY KEY,
  first_name character varying NOT NULL,
  middle_name character varying,
  last_name character varying NOT NULL,
  phone character varying NOT NULL,
  zip character varying NOT NULL,
  address_line1 character varying NOT NULL,
  address_line2 character varying,
  city character varying NOT NULL,
  state character varying NOT NULL,
  country_code character varying NOT NULL,
  notes text
) WITH (
OIDS=FALSE
);

