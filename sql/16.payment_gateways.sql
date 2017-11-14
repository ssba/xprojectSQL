CREATE TABLE payment_gateways (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  name character varying NOT NULL UNIQUE,
  "desc" uuid NOT NULL,
  "isActive" boolean DEFAULT false NOT NULL,
  settings json DEFAULT '[]'::json NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

