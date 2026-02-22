create table accounts(
    acc_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email varchar(30) unique not null,
    username varchar(30) unique not null,
    password varchar(30) not null,
    account_type varchar(20) not null
);