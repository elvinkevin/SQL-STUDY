CREATE TABLE country (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    location VARCHAR(20) NOT NULl
);

CREATE TABLE stores (
    store_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    country_id BIGINT NOT NULL,
    location VARCHAR(30) NOT NULL,
    
    CONSTRAINT fk_country 
        FOREIGN KEY(country_id) 
        REFERENCES country(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

create table jumia_branches(
    branch_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    store_id BIGINT not NULL,
    branch_name varchar(45),
    adress varchar(50),

    CONSTRAINT fk_store
    foreign key(store_id)
    REFERENCES stores(store_id)
    on update CASCADE
    on delete RESTRICT
    );

    create table accounts(
    acc_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email varchar(30) unique not null,
    username varchar(30) unique not null,
    password varchar(30) not null,
    account_type varchar(20) not null
);
