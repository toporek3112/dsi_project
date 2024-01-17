create table if not exists public.delays
(
    id          integer not null
    column_name integer,
    title       varchar(255),
    lines       varchar,
    stations    varchar,
    start       timestamp,
    "end"       timestamp
);

alter table public.delays
    owner to postgres;

create table if not exists public.weather
(
    id            integer not null
        constraint weather_pk
            primary key,
    time        tiemstamp,
    weather_code  integer,
    temperature   double precision,
    daylight      double precision,
    precipitation double precision,
    wind          double precision
);

alter table public.weather
    owner to postgres;

create table if not exists public.stops
(
    id        integer not null
        constraint stops_pk
            primary key,
    name      varchar,
    longitude double precision,
    latitude  double precision
);

alter table public.stops
    owner to postgres;

