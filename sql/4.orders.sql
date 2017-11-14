CREATE TABLE "orders" (
  id uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
  "user" uuid NOT NULL,
  gateway character varying NOT NULL,
  coupon character varying,
  total numeric NOT NULL,
  taxes numeric NOT NULL,
  shipping numeric NOT NULL,
  tracking character varying,
  created_at timestamp without time zone DEFAULT now() NOT NULL,
  updated_at timestamp without time zone DEFAULT now() NOT NULL
);

