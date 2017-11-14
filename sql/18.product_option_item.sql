CREATE SEQUENCE product_option_item_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE product_option_item (
  id integer NOT NULL DEFAULT nextval('product_option_item_id_seq'::regclass) PRIMARY KEY,
  option uuid NOT NULL,
  value uuid NOT NULL,
  "isActive" boolean DEFAULT true NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

COMMENT ON COLUMN product_option_item.value IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';

