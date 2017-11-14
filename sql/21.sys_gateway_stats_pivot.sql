CREATE TABLE sys_gateway_stats_pivot (
  "sys_payment_statID" uuid NOT NULL ,
  "gateway_payment_statID" integer NOT NULL ,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  unique ("sys_payment_statID", "gateway_payment_statID")
) WITH (
OIDS=FALSE
);

