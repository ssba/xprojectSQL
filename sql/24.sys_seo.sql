CREATE SEQUENCE sys_seo_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE sys_seo (
  id integer NOT NULL DEFAULT nextval('sys_seo_id_seq'::regclass) PRIMARY KEY,
  entity uuid NOT NULL UNIQUE,
  title uuid NOT NULL,
  "desc" uuid,
  content_type character varying DEFAULT 'text/html; charset=utf-8'::character varying NOT NULL,
  robot character varying,
  author character varying,
  copyright character varying,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

COMMENT ON COLUMN sys_seo.title IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';
COMMENT ON COLUMN sys_seo."desc" IS 'UUID sorted in NoSQL DB in MUI tbl w/ pattern %lang%+%id%';
