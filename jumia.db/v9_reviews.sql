create table reviews(
    review_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cust_id BIGINT not NULL,
    product_id BIGINT not NULL,
    rating int CHECK(rating >= 1 AND rating <= 5),
    review_text varchar(255),

    CONSTRAINT fk_cust
    foreign key(cust_id)
    references customers(cust_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_product
    foreign key(product_id)
    references products(product_id)
    on update cascade
    on delete RESTRICT
);

create table feedback(
    feedback_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    review_id BIGINT not NULL,
    cust_id BIGINT not NULL,
    feedback_text varchar(255),
    feedback_date date,

    CONSTRAINT fk_cust
    foreign key(cust_id)
    references customers(cust_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_review
    foreign key(review_id)
    references reviews(review_id)
    on update cascade
    on delete RESTRICT
);