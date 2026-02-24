create table payments(
    payment_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id BIGINT not NULL,
    payment_date date,
    payment_amount numeric(10,2),
    payment_method varchar(20),

    CONSTRAINT fk_order
    foreign key(order_id)
    references orders(order_id)
    on update cascade
    on delete RESTRICT
);