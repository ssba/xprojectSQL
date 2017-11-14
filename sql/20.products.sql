CREATE TABLE products (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  sku character varying NOT NULL UNIQUE,
  category uuid NOT NULL,
  name uuid NOT NULL,
  description uuid,
  image integer,
  "position" integer DEFAULT 1 NOT NULL,
  "isActive" boolean DEFAULT true NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

COMMENT ON COLUMN products.name IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';
COMMENT ON COLUMN products.description IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';

