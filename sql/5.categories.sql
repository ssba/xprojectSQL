CREATE TABLE categories (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  parent uuid,
  name uuid NOT NULL,
  description uuid,
  logo integer,
  manufacturer uuid,
  "position" integer DEFAULT 1 NOT NULL,
  "isActive" boolean DEFAULT true NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
);

COMMENT ON COLUMN categories.name IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';
COMMENT ON COLUMN categories.description IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';

