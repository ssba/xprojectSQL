CREATE SEQUENCE sys_multimedia_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

CREATE TABLE sys_multimedia (
  id integer NOT NULL DEFAULT nextval('sys_multimedia_id_seq'::regclass) PRIMARY KEY,
  type multimedia_type NOT NULL,
  uri character varying NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

