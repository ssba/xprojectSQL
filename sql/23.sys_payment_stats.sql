CREATE TABLE sys_payment_stats (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  name character varying NOT NULL,
  "desc" text,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

