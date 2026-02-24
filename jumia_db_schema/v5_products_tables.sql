create table product_categories(
    category_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category_name varchar(30) unique not null
);

create table products(
    product_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category_id BIGINT not NULL,
    product_name varchar(50),
    price numeric(10,2),

    CONSTRAINT fk_category
    foreign key(category_id)
    references product_categories(category_id)
    on update cascade
    on delete RESTRICT
);

create table vendor_listings(
    listing_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    vendor_id BIGINT not NULL,
    product_id BIGINT not NULL,
    stock_quantity int,
    price numeric(10,2),

    CONSTRAINT fk_vendor
    foreign key(vendor_id)
    references vendors(vendor_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_product
    foreign key(product_id)
    references products(product_id)
    on update cascade
    on delete RESTRICT
);