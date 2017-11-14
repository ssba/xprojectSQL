CREATE SEQUENCE category_multimedia_pivot_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE category_multimedia_pivot (
  id integer NOT NULL DEFAULT nextval('category_multimedia_pivot_id_seq'::regclass) PRIMARY KEY,
  category uuid NOT NULL,
  multimedia integer NOT NULL,
  "isPreview" boolean DEFAULT false NOT NULL,
  "position" integer DEFAULT 1 NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

