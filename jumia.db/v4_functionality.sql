reate table customers(
    cust_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    acc_id BIGINT not NULL,
    cust_name varchar(30),
    contacts varchar(30) unique not null,
    national_id varchar(20) unique not null,

    CONSTRAINT fk_acc
    foreign key(acc_id)
    references accounts(acc_id)
    on update cascade
    on delete RESTRICT
);

create table vendors(
    vendor_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    acc_id BIGINT not NULL,
    vendor_name varchar(30),
    contacts varchar(30) unique not null,
    national_id varchar(20) unique not null,

    CONSTRAINT fk_acc
    foreign key(acc_id)
    references accounts(acc_id)
    on update cascade
    on delete RESTRICT
);