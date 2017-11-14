CREATE SEQUENCE ordered_prod_options_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE ordered_prod_options (
  id integer NOT NULL DEFAULT nextval('ordered_prod_options_id_seq'::regclass) PRIMARY KEY,
  "orderCart" integer NOT NULL,
  option uuid NOT NULL,
  "optionItem" integer,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

