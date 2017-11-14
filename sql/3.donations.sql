CREATE TABLE "donations" (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  "user" uuid NOT NULL,
  gateway character varying NOT NULL,
  total numeric NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

