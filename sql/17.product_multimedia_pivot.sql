CREATE SEQUENCE product_multimedia_pivot_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE product_multimedia_pivot (
  id integer NOT NULL DEFAULT nextval('product_multimedia_pivot_id_seq'::regclass) PRIMARY KEY,
  product uuid NOT NULL,
  multimedia integer NOT NULL,
  "isPreview" boolean NOT NULL,
  "position" integer NOT NULL
) WITH (
OIDS=FALSE
);

