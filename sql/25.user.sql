CREATE TABLE "user" (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  login character varying NOT NULL UNIQUE,
  password character varying NOT NULL,
  contact integer NOT NULL UNIQUE,
  role user_type DEFAULT 'User'::user_type NOT NULL,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
) WITH (
OIDS=FALSE
);

