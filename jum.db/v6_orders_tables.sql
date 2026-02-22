create table orders(
    order_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_number varchar(20) unique not null,
    cust_id BIGINT not NULL,
    order_date date,
    order_status varchar(20) not null,

    CONSTRAINT fk_cust
    foreign key(cust_id)
    references customers(cust_id)
    on update cascade
    on delete RESTRICT
);


create table order_details(
    order_detail_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id BIGINT not NULL,
    listing_id BIGINT not NULL,
    product_name varchar(50),
    quantity int,
    price numeric(10,2),
    total numeric(10,2),

    CONSTRAINT fk_order
    foreign key(order_id)
    references orders(order_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_listing
    foreign key(listing_id)
    references vendor_listings(listing_id)
    on update cascade
    on delete RESTRICT
);