create table accounts(
    acc_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email varchar(30) unique not null,
    username varchar(30) unique not null,
    password varchar(30) not null, --always store passwords as hashes, not plain text
    account_type varchar(20) not null
);

