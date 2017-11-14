CREATE TABLE product_options (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  product uuid,
  type product_options_type NOT NULL,
  name uuid NOT NULL,
  price numeric DEFAULT 0.0 NOT NULL,
  "isActive" boolean DEFAULT false NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

COMMENT ON COLUMN product_options.name IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';

