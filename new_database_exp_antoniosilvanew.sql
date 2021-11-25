--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Debian 12.9-1.pgdg110+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO antonio_silva;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO antonio_silva;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO antonio_silva;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO antonio_silva;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO antonio_silva;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO antonio_silva;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO antonio_silva;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO antonio_silva;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO antonio_silva;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO antonio_silva;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO antonio_silva;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO antonio_silva;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO antonio_silva;

--
-- Name: orders_order; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.orders_order (
    id bigint NOT NULL,
    "time" time without time zone NOT NULL,
    restaurant_id bigint,
    status_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.orders_order OWNER TO antonio_silva;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO antonio_silva;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;


--
-- Name: orders_productslist; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.orders_productslist (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    notes character varying(20),
    order_id bigint,
    product_id bigint NOT NULL
);


ALTER TABLE public.orders_productslist OWNER TO antonio_silva;

--
-- Name: orders_products_list_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.orders_products_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_products_list_id_seq OWNER TO antonio_silva;

--
-- Name: orders_products_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.orders_products_list_id_seq OWNED BY public.orders_productslist.id;


--
-- Name: orders_status; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.orders_status (
    id bigint NOT NULL,
    description character varying(20) NOT NULL
);


ALTER TABLE public.orders_status OWNER TO antonio_silva;

--
-- Name: orders_status_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.orders_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_status_id_seq OWNER TO antonio_silva;

--
-- Name: orders_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.orders_status_id_seq OWNED BY public.orders_status.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(100) NOT NULL,
    price numeric(6,2) NOT NULL,
    image character varying(100)
);


ALTER TABLE public.products_product OWNER TO antonio_silva;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO antonio_silva;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: ristorante_address; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.ristorante_address (
    id bigint NOT NULL,
    street character varying(80) NOT NULL,
    city character varying(80) NOT NULL,
    postal_abbr character varying(2) NOT NULL,
    zipcode character varying(10) NOT NULL
);


ALTER TABLE public.ristorante_address OWNER TO antonio_silva;

--
-- Name: ristorante_address_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.ristorante_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ristorante_address_id_seq OWNER TO antonio_silva;

--
-- Name: ristorante_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.ristorante_address_id_seq OWNED BY public.ristorante_address.id;


--
-- Name: ristorante_restaurant; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.ristorante_restaurant (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    schedule_open time without time zone NOT NULL,
    schedule_close time without time zone NOT NULL,
    phone_number character varying(15) NOT NULL,
    address_id bigint
);


ALTER TABLE public.ristorante_restaurant OWNER TO antonio_silva;

--
-- Name: ristorante_restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.ristorante_restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ristorante_restaurant_id_seq OWNER TO antonio_silva;

--
-- Name: ristorante_restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.ristorante_restaurant_id_seq OWNED BY public.ristorante_restaurant.id;


--
-- Name: store_address; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_address (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    int_number integer,
    ext_number integer
);


ALTER TABLE public.store_address OWNER TO antonio_silva;

--
-- Name: store_address_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_address_id_seq OWNER TO antonio_silva;

--
-- Name: store_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_address_id_seq OWNED BY public.store_address.id;


--
-- Name: store_employee; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_employee (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    last_grade character varying(100) NOT NULL,
    branch_id bigint NOT NULL,
    home_address_id bigint NOT NULL
);


ALTER TABLE public.store_employee OWNER TO antonio_silva;

--
-- Name: store_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_employee_id_seq OWNER TO antonio_silva;

--
-- Name: store_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_employee_id_seq OWNED BY public.store_employee.id;


--
-- Name: store_employee_job; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_employee_job (
    id bigint NOT NULL,
    employee_id bigint NOT NULL,
    job_id bigint NOT NULL
);


ALTER TABLE public.store_employee_job OWNER TO antonio_silva;

--
-- Name: store_employee_job_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_employee_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_employee_job_id_seq OWNER TO antonio_silva;

--
-- Name: store_employee_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_employee_job_id_seq OWNED BY public.store_employee_job.id;


--
-- Name: store_job; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_job (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.store_job OWNER TO antonio_silva;

--
-- Name: store_job_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_job_id_seq OWNER TO antonio_silva;

--
-- Name: store_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_job_id_seq OWNED BY public.store_job.id;


--
-- Name: store_store; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.store_store (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    address text NOT NULL,
    owner character varying(255) NOT NULL
);


ALTER TABLE public.store_store OWNER TO antonio_silva;

--
-- Name: store_store_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.store_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_store_id_seq OWNER TO antonio_silva;

--
-- Name: store_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.store_store_id_seq OWNED BY public.store_store.id;


--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO antonio_silva;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO antonio_silva;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO antonio_silva;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO antonio_silva;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(255) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.users_user OWNER TO antonio_silva;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO antonio_silva;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO antonio_silva;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO antonio_silva;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: antonio_silva
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO antonio_silva;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: antonio_silva
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO antonio_silva;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: antonio_silva
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: orders_order id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders_productslist id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist ALTER COLUMN id SET DEFAULT nextval('public.orders_products_list_id_seq'::regclass);


--
-- Name: orders_status id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_status ALTER COLUMN id SET DEFAULT nextval('public.orders_status_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: ristorante_address id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_address ALTER COLUMN id SET DEFAULT nextval('public.ristorante_address_id_seq'::regclass);


--
-- Name: ristorante_restaurant id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_restaurant ALTER COLUMN id SET DEFAULT nextval('public.ristorante_restaurant_id_seq'::regclass);


--
-- Name: store_address id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_address ALTER COLUMN id SET DEFAULT nextval('public.store_address_id_seq'::regclass);


--
-- Name: store_employee id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee ALTER COLUMN id SET DEFAULT nextval('public.store_employee_id_seq'::regclass);


--
-- Name: store_employee_job id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job ALTER COLUMN id SET DEFAULT nextval('public.store_employee_job_id_seq'::regclass);


--
-- Name: store_job id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_job ALTER COLUMN id SET DEFAULT nextval('public.store_job_id_seq'::regclass);


--
-- Name: store_store id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_store ALTER COLUMN id SET DEFAULT nextval('public.store_store_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add blacklisted token	7	add_blacklistedtoken
26	Can change blacklisted token	7	change_blacklistedtoken
27	Can delete blacklisted token	7	delete_blacklistedtoken
28	Can view blacklisted token	7	view_blacklistedtoken
29	Can add outstanding token	8	add_outstandingtoken
30	Can change outstanding token	8	change_outstandingtoken
31	Can delete outstanding token	8	delete_outstandingtoken
32	Can view outstanding token	8	view_outstandingtoken
33	Can add store	9	add_store
34	Can change store	9	change_store
35	Can delete store	9	delete_store
36	Can view store	9	view_store
37	Can add job	10	add_job
38	Can change job	10	change_job
39	Can delete job	10	delete_job
40	Can view job	10	view_job
41	Can add address	11	add_address
42	Can change address	11	change_address
43	Can delete address	11	delete_address
44	Can view address	11	view_address
45	Can add employee	12	add_employee
46	Can change employee	12	change_employee
47	Can delete employee	12	delete_employee
48	Can view employee	12	view_employee
49	Can add address	13	add_address
50	Can change address	13	change_address
51	Can delete address	13	delete_address
52	Can view address	13	view_address
53	Can add restaurant	14	add_restaurant
54	Can change restaurant	14	change_restaurant
55	Can delete restaurant	14	delete_restaurant
56	Can view restaurant	14	view_restaurant
57	Can add product	15	add_product
58	Can change product	15	change_product
59	Can delete product	15	delete_product
60	Can view product	15	view_product
61	Can add order	16	add_order
62	Can change order	16	change_order
63	Can delete order	16	delete_order
64	Can view order	16	view_order
65	Can add products_list	17	add_products_list
66	Can change products_list	17	change_products_list
67	Can delete products_list	17	delete_products_list
68	Can view products_list	17	view_products_list
69	Can add status	18	add_status
70	Can change status	18	change_status
71	Can delete status	18	delete_status
72	Can view status	18	view_status
73	Can add productslist	19	add_productslist
74	Can change productslist	19	change_productslist
75	Can delete productslist	19	delete_productslist
76	Can view productslist	19	view_productslist
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	user
7	token_blacklist	blacklistedtoken
8	token_blacklist	outstandingtoken
9	store	store
10	store	job
11	store	address
12	store	employee
13	ristorante	address
14	ristorante	restaurant
15	products	product
16	orders	order
17	orders	products_list
18	orders	status
19	orders	productslist
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-11-19 21:53:27.219776+00
2	contenttypes	0002_remove_content_type_name	2021-11-19 21:53:27.238425+00
3	auth	0001_initial	2021-11-19 21:53:27.293354+00
4	auth	0002_alter_permission_name_max_length	2021-11-19 21:53:27.301339+00
5	auth	0003_alter_user_email_max_length	2021-11-19 21:53:27.311882+00
6	auth	0004_alter_user_username_opts	2021-11-19 21:53:27.322604+00
7	auth	0005_alter_user_last_login_null	2021-11-19 21:53:27.333101+00
8	auth	0006_require_contenttypes_0002	2021-11-19 21:53:27.336754+00
9	auth	0007_alter_validators_add_error_messages	2021-11-19 21:53:27.346544+00
10	auth	0008_alter_user_username_max_length	2021-11-19 21:53:27.355907+00
11	auth	0009_alter_user_last_name_max_length	2021-11-19 21:53:27.368651+00
12	auth	0010_alter_group_name_max_length	2021-11-19 21:53:27.377945+00
13	auth	0011_update_proxy_permissions	2021-11-19 21:53:27.38777+00
14	auth	0012_alter_user_first_name_max_length	2021-11-19 21:53:27.396099+00
15	users	0001_initial	2021-11-19 21:53:27.444547+00
16	admin	0001_initial	2021-11-19 21:53:27.473563+00
17	admin	0002_logentry_remove_auto_add	2021-11-19 21:53:27.484591+00
18	admin	0003_logentry_add_action_flag_choices	2021-11-19 21:53:27.496046+00
19	sessions	0001_initial	2021-11-19 21:53:27.51353+00
20	users	0002_auto_20211119_2301	2021-11-19 23:01:37.312632+00
21	token_blacklist	0001_initial	2021-11-24 17:16:37.022852+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2021-11-24 17:16:37.034256+00
23	token_blacklist	0003_auto_20171017_2007	2021-11-24 17:16:37.056043+00
24	token_blacklist	0004_auto_20171017_2013	2021-11-24 17:16:37.072313+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2021-11-24 17:16:37.084909+00
26	token_blacklist	0006_auto_20171017_2113	2021-11-24 17:16:37.095867+00
27	token_blacklist	0007_auto_20171017_2214	2021-11-24 17:16:37.138356+00
28	token_blacklist	0008_migrate_to_bigautofield	2021-11-24 17:16:37.213263+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2021-11-24 17:16:37.236664+00
30	token_blacklist	0011_linearizes_history	2021-11-24 17:16:37.239506+00
31	store	0001_initial	2021-11-24 17:50:20.391865+00
32	ristorante	0001_initial	2021-11-24 19:44:05.079644+00
33	products	0001_initial	2021-11-24 19:44:15.085453+00
34	orders	0001_initial	2021-11-24 23:36:37.377724+00
35	orders	0002_rename_pproducts_list_order_listof_products	2021-11-25 17:11:06.714893+00
36	orders	0003_auto_20211125_1755	2021-11-25 17:55:11.696652+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.orders_order (id, "time", restaurant_id, status_id, user_id) FROM stdin;
1	16:39:52	1	1	9
2	12:59:59	3	4	8
3	12:59:59	3	4	8
4	12:59:59	3	4	8
5	01:59:59	5	3	6
6	01:59:59	5	3	6
7	01:59:59	5	3	6
8	01:59:59	5	3	6
9	01:59:59	5	3	6
10	01:59:59	5	3	6
11	14:21:38	2	2	7
12	14:21:38	2	2	7
\.


--
-- Data for Name: orders_productslist; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.orders_productslist (id, quantity, notes, order_id, product_id) FROM stdin;
1	1	NO ONION	1	1
2	1	FULL	1	6
3	1	EXTRA PICKLES	1	8
4	1	NO TOMATOES	1	12
5	1	PRUEBA	2	13
6	2	PRUEBA1	2	10
7	3	PRUEBA2	2	13
8	1	PRUEBA314	3	4
9	10	PRUEBA3109	3	9
\.


--
-- Data for Name: orders_status; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.orders_status (id, description) FROM stdin;
1	PENDING
2	READY
4	CANCELED
3	DELIVERED
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.products_product (id, name, description, price, image) FROM stdin;
1	Whopper	Our Whopper Sandwich is a 1/4 lb of savory flame-grilled beef topped with juicy tomatoes.	4.19	https://ibb.co/kDFKLhm
2	Impossible Whopper	Features a flame-grilled patty made from plants topped with tomatoes,lettuce, mayo, ketchup	7.29	https://ibb.co/dP40Ym2
3	Bacon King	Our Bacon King Sandwich features two ¼ lb* savory flame-grilled beef patties	6.00	https://ibb.co/L60jNhc
4	Double Whopper	Our Double Whopper Sandwich is a pairing of two ¼ lb* savory flame-grilled beef patties	5.29	https://ibb.co/z44TbfH
5	Triple Whopper With Cheese	Our Triple Whopper Sandwich features three ¼ lb* savory flame-grilled beef patties	7.29	https://ibb.co/XYt6dQx
6	Texas Double Whopper	Texas Double Whopper 1,150 Cal Entree only	5.29	https://ibb.co/mJvJK58
7	Whopper Jr	Our Whopper Jr. Sandwich features one savory flame-grilled beef patty topped with juicy tomatoes	2.19	https://ibb.co/TbZ9B6D
8	Double Cheeseburger	Make room for our Double Cheeseburger, two signature flame-grilled beef patties	1.69	https://ibb.co/4jck8x9
9	Bacon Double Cheeseburger	Make room for our Bacon Double Cheeseburger, two signature flame-grilled beef patties	2.29	https://ibb.co/HXM8rRL
10	Bacon Cheeseburger	You can’t go wrong with our Bacon Cheeseburger, a signature flame-grilled beef patty	1.49	https://ibb.co/bmM5CYL
11	Cheeseburger	Cheeseburger is a signature flame-grilled beef patty topped with a layer of melted American cheese	1.00	https://ibb.co/SRVfWX3
12	Hamburger	Hamburger is a signature flame-grilled beef patty topped with a simple layer of crinkle cut pickles	1.00	https://ibb.co/ZGM2By9
13	Rodeo Burger	Rodeo Burger 328 Cal Entree only	1.00	https://ibb.co/tCtfNPg
\.


--
-- Data for Name: ristorante_address; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.ristorante_address (id, street, city, postal_abbr, zipcode) FROM stdin;
1	1313 Disneyland Dr. Anaheim	California	CA	92802
2	1375 E Buena Vista Dr	Orlando	FL	32830
3	200 Santa Monica Pier	Santa Monica	CA	90401
4	7824 E Rhiannon Dr	Tucson	AZ	85730
5	Campillo 91, Fundo Legal, Centro	Nogales	MX	84000
\.


--
-- Data for Name: ristorante_restaurant; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.ristorante_restaurant (id, name, schedule_open, schedule_close, phone_number, address_id) FROM stdin;
1	Burger King Disneyland Anaheim	08:00:00	20:00:00	+1 714-781-4636	1
2	Burger King Disney World Resort Buena Vista	08:00:00	20:00:00	+1 407-939-5277	2
3	Burger King Pier	10:00:00	18:00:00	+1 310-458-8900	3
4	Burger King E Rhiannon Dr	09:00:00	19:00:00	+1 520-295-9005	4
5	Burger King Nogales	11:00:00	23:00:00	631 311 6000	5
\.


--
-- Data for Name: store_address; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_address (id, name, state, int_number, ext_number) FROM stdin;
1	Florida	Florida	\N	12
3	Santa Fe	California	23	32
2	Tucson	Arizona	2	50502
4	Reforma	Mexico City	\N	43
\.


--
-- Data for Name: store_employee; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_employee (id, name, age, last_grade, branch_id, home_address_id) FROM stdin;
17	Mariano	28	High School	1	1
19	Hugo	21	Bachelor	3	3
18	Maria	32	Masters Degree	2	2
\.


--
-- Data for Name: store_employee_job; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_employee_job (id, employee_id, job_id) FROM stdin;
11	17	1
12	18	2
13	19	4
\.


--
-- Data for Name: store_job; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_job (id, name) FROM stdin;
1	Maintenance
2	Development
3	Monitoring
4	Design
5	Management
\.


--
-- Data for Name: store_store; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.store_store (id, name, address, owner) FROM stdin;
1	Liverpool	Correo Mayor #13	Salinas
2	Coppel	Tlalpan #1200	Slim
3	Sanborns	Insurgentes #40	Salins
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2MjEzNSwiaWF0IjoxNjM3Nzc1NzM1LCJqdGkiOiJiMzYwYzAwMzg2N2M0NmUzOWE0YjkzMzdmZTZkODg1YyIsInVzZXJfaWQiOjh9.TvmnEKYCFOU4HIo5EJEovod1acXhJIp6JynieQJ3rKE	2021-11-24 17:42:15.175284+00	2021-11-25 17:42:15+00	8	b360c003867c46e39a4b9337fe6d885c
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2NTMwMywiaWF0IjoxNjM3Nzc4OTAzLCJqdGkiOiI4ZDMzMmUzNTJmNjY0ZGFmODk5Nzk4M2YyZThiOWFhZSIsInVzZXJfaWQiOjh9.0lxxGJWFtJYsYlKflKnRKw_6uuO2-n5vGH7E7eGqLk8	2021-11-24 18:35:03.524642+00	2021-11-25 18:35:03+00	8	8d332e352f664daf8997983f2e8b9aae
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg3NjcxNCwiaWF0IjoxNjM3NzkwMzE0LCJqdGkiOiI4NmI2NTRiMzhkZGQ0ZjEyOGRmYmUzNTk4MzgwZDk4NiIsInVzZXJfaWQiOjl9.k6H5Q5s4hh4uAhz8nAiq3QVZOpKSENvY19TdkRp9K_8	2021-11-24 21:45:14.060028+00	2021-11-25 21:45:14+00	9	86b654b38ddd4f128dfbe3598380d986
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzk0NTI4OSwiaWF0IjoxNjM3ODU4ODg5LCJqdGkiOiJlN2M3ZTYwNjM1NGE0MWFiOGM1NWIxZTM2YTEzMDRjZiIsInVzZXJfaWQiOjl9.ub-OmCV-necdnqb5RTAtkrsze9U2Ee5xEpXe-pB6wE4	2021-11-25 16:48:09.283491+00	2021-11-26 16:48:09+00	9	e7c7e606354a41ab8c55b1e36a1304cf
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$2hO2kqosRJ6pM1WKhJEydO$LhliLWrfqYqwXKtqgXriJpuO6WtwydGxREdPcYK9L7A=	\N	f				user2@mail.com	f	t	2021-11-19 21:56:09.212574+00
6	pbkdf2_sha256$260000$uzqh8Bpurs4ldJX2f64r76$xbq+3zUy/6WRa2GAyWvRENqcxme2KMcByQ2fNgL6bbc=	\N	f	username			user5@mail.com	f	t	2021-11-19 23:02:46.056837+00
7	pbkdf2_sha256$260000$xaJreYnUvOjXRKi7ordG1s$h49PlfqkTAdhczYfqIIQGgup5zOQDbSN1qNz2fjFB/s=	\N	f	user6			user6@mail.com	f	t	2021-11-19 23:41:07.919341+00
8	pbkdf2_sha256$260000$HaSX9I1l8aNGtxQhhKCTdC$dDpEfudQgAWn0p12rjgYesu2f33qWAIFIqtKGb4REhI=	\N	f	antonio_silva			antonio_silva@gmail.com	f	t	2021-11-24 17:24:36.654796+00
9	pbkdf2_sha256$260000$BddB2tqGZPsJ0Ah3tSQxN4$eps8PvTNPoMldSkDD4Fc251wBGT7yeHm+M4XlJtFJ9g=	\N	f	KooperWins	Jesus	Silva	KooperWins@gmail.com	f	t	2021-11-24 21:42:07.237674+00
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: antonio_silva
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 12, true);


--
-- Name: orders_products_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.orders_products_list_id_seq', 9, true);


--
-- Name: orders_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.orders_status_id_seq', 1, false);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.products_product_id_seq', 14, true);


--
-- Name: ristorante_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.ristorante_address_id_seq', 1, false);


--
-- Name: ristorante_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.ristorante_restaurant_id_seq', 1, false);


--
-- Name: store_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_address_id_seq', 4, true);


--
-- Name: store_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_employee_id_seq', 19, true);


--
-- Name: store_employee_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_employee_job_id_seq', 13, true);


--
-- Name: store_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_job_id_seq', 5, true);


--
-- Name: store_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.store_store_id_seq', 3, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 4, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: antonio_silva
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);


--
-- Name: orders_productslist orders_products_list_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist
    ADD CONSTRAINT orders_products_list_pkey PRIMARY KEY (id);


--
-- Name: orders_status orders_status_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_status
    ADD CONSTRAINT orders_status_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: ristorante_address ristorante_address_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_address
    ADD CONSTRAINT ristorante_address_pkey PRIMARY KEY (id);


--
-- Name: ristorante_restaurant ristorante_restaurant_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_restaurant
    ADD CONSTRAINT ristorante_restaurant_pkey PRIMARY KEY (id);


--
-- Name: store_address store_address_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_address
    ADD CONSTRAINT store_address_pkey PRIMARY KEY (id);


--
-- Name: store_employee store_employee_home_address_id_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_home_address_id_key UNIQUE (home_address_id);


--
-- Name: store_employee_job store_employee_job_employee_id_job_id_ffaaf70c_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_employee_id_job_id_ffaaf70c_uniq UNIQUE (employee_id, job_id);


--
-- Name: store_employee_job store_employee_job_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_pkey PRIMARY KEY (id);


--
-- Name: store_employee store_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_pkey PRIMARY KEY (id);


--
-- Name: store_job store_job_name_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_job
    ADD CONSTRAINT store_job_name_key UNIQUE (name);


--
-- Name: store_job store_job_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_job
    ADD CONSTRAINT store_job_pkey PRIMARY KEY (id);


--
-- Name: store_store store_store_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_store
    ADD CONSTRAINT store_store_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_email_243f6e77_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_243f6e77_uniq UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: orders_order_restaurant_id_a38fbfc0; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_order_restaurant_id_a38fbfc0 ON public.orders_order USING btree (restaurant_id);


--
-- Name: orders_order_status_id_d80abc38; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_order_status_id_d80abc38 ON public.orders_order USING btree (status_id);


--
-- Name: orders_order_user_id_e9b59eb1; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_order_user_id_e9b59eb1 ON public.orders_order USING btree (user_id);


--
-- Name: orders_products_list_order_id_144636bf; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_products_list_order_id_144636bf ON public.orders_productslist USING btree (order_id);


--
-- Name: orders_products_list_product_id_2928f735; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX orders_products_list_product_id_2928f735 ON public.orders_productslist USING btree (product_id);


--
-- Name: ristorante_restaurant_address_id_9f08bca3; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX ristorante_restaurant_address_id_9f08bca3 ON public.ristorante_restaurant USING btree (address_id);


--
-- Name: store_employee_branch_id_37106d11; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_employee_branch_id_37106d11 ON public.store_employee USING btree (branch_id);


--
-- Name: store_employee_job_employee_id_4ba6904a; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_employee_job_employee_id_4ba6904a ON public.store_employee_job USING btree (employee_id);


--
-- Name: store_employee_job_job_id_43f375b7; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_employee_job_job_id_43f375b7 ON public.store_employee_job USING btree (job_id);


--
-- Name: store_job_name_af58d936_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX store_job_name_af58d936_like ON public.store_job USING btree (name varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: antonio_silva
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_restaurant_id_a38fbfc0_fk_ristorante_restaurant_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_restaurant_id_a38fbfc0_fk_ristorante_restaurant_id FOREIGN KEY (restaurant_id) REFERENCES public.ristorante_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_status_id_d80abc38_fk_orders_status_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_status_id_d80abc38_fk_orders_status_id FOREIGN KEY (status_id) REFERENCES public.orders_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_user_id_e9b59eb1_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_user_id_e9b59eb1_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_productslist orders_products_list_order_id_144636bf_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist
    ADD CONSTRAINT orders_products_list_order_id_144636bf_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_productslist orders_products_list_product_id_2928f735_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.orders_productslist
    ADD CONSTRAINT orders_products_list_product_id_2928f735_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ristorante_restaurant ristorante_restauran_address_id_9f08bca3_fk_ristorant; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.ristorante_restaurant
    ADD CONSTRAINT ristorante_restauran_address_id_9f08bca3_fk_ristorant FOREIGN KEY (address_id) REFERENCES public.ristorante_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee store_employee_branch_id_37106d11_fk_store_store_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_branch_id_37106d11_fk_store_store_id FOREIGN KEY (branch_id) REFERENCES public.store_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee store_employee_home_address_id_958bfaa2_fk_store_address_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_home_address_id_958bfaa2_fk_store_address_id FOREIGN KEY (home_address_id) REFERENCES public.store_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee_job store_employee_job_employee_id_4ba6904a_fk_store_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_employee_id_4ba6904a_fk_store_employee_id FOREIGN KEY (employee_id) REFERENCES public.store_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee_job store_employee_job_job_id_43f375b7_fk_store_job_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_job_id_43f375b7_fk_store_job_id FOREIGN KEY (job_id) REFERENCES public.store_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: antonio_silva
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

