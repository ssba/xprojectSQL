CREATE SEQUENCE gateway_payment_stats_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE gateway_payment_stats (
  id integer NOT NULL DEFAULT nextval('gateway_payment_stats_id_seq'::regclass) PRIMARY KEY,
  "gatewayID" uuid NOT NULL,
  name character varying NOT NULL,
  "desc" text NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);
