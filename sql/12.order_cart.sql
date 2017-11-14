CREATE SEQUENCE order_cart_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE order_cart (
  id integer NOT NULL DEFAULT nextval('order_cart_id_seq'::regclass) PRIMARY KEY,
  product uuid NOT NULL,
  "order" uuid NOT NULL,
  count integer NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

