create table pickup_stations(
    pck_station_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    location varchar(50) not null,
    emp_id BIGINT not NULL,
    contacts varchar(30) unique not null,

    CONSTRAINT fk_employee
    foreign key(emp_id)
    references employees(emp_id)
    on update cascade
    on delete RESTRICT
);

create table deliveries(
    delivery_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id BIGINT not NULL,
    delivery_date date,
    delivery_status varchar(20),
    delivery_address varchar(50),
    pck_station_id BIGINT not NULL,
    emp_id BIGINT not NULL,

    CONSTRAINT fk_order
    foreign key(order_id)
    references orders(order_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_employee
    foreign key(emp_id)    
    references employees(emp_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_pck_station
    foreign key(pck_station_id)
    references pickup_stations(pck_station_id)
    on update cascade
    on delete RESTRICT
);