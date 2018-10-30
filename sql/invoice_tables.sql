CREATE TABLE public.invoice_orders (
    id integer NOT NULL,
    account text NOT NULL,
    order_no text,
    order_date date,
    bill_to_name text,
    bill_to_address text,
    bill_to_city text,
    ship_to_name text,
    ship_to_address text,
    ship_to_city text,
    terms text,
    ship_via text,
    ship_date date,
    due_date date,
    po_number  text,
    po_date date,
    sales_person text,
    allowance_percent numeric,
    subtotal numeric,
    total_allowance numeric,
    tax numeric,
    total numeric
);

CREATE SEQUENCE public.invoice_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.invoice_orders_id_seq OWNED BY public.invoice_orders.id;

ALTER TABLE ONLY public.invoice_orders ALTER COLUMN id SET DEFAULT nextval('public.invoice_orders_id_seq'::regclass);

SELECT pg_catalog.setval('public.invoice_orders_id_seq', 1, false);

ALTER TABLE ONLY public.invoice_orders
    ADD CONSTRAINT invoice_orders_pkey PRIMARY KEY (id);


CREATE TABLE public.invoice_items (
    id integer NOT NULL,
    order_no text,
    item_no text,
    description text,
    unit text,
    order_qty numeric,
    shipped_qty numeric,
    unit_price numeric,
    price numeric,
    spoilage_allowance numeric,
    total_allowance numeric,
    total_price numeric
);

CREATE SEQUENCE public.invoice_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.invoice_items_id_seq OWNED BY public.invoice_items.id;

ALTER TABLE ONLY public.invoice_items ALTER COLUMN id SET DEFAULT nextval('public.invoice_items_id_seq'::regclass);

SELECT pg_catalog.setval('public.invoice_items_id_seq', 1, false);

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT invoice_items_pkey PRIMARY KEY (id);
