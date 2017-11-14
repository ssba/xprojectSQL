CREATE TABLE manufacturers (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  name uuid NOT NULL,
  description character varying NOT NULL,
  logo character varying,
  "position" integer NOT NULL,
  seo uuid NOT NULL,
  "isActive" boolean DEFAULT true NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

COMMENT ON COLUMN manufacturers.name IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';
