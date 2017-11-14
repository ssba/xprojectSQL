CREATE SEQUENCE order_status_timeline_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE order_status_timeline (
  id integer NOT NULL DEFAULT nextval('order_status_timeline_id_seq'::regclass) PRIMARY KEY,
  "order" uuid NOT NULL,
  status order_status NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

