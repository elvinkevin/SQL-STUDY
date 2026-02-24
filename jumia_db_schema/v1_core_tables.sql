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
    
--i have added this joining table to allow for a many to many relationship between departments and branches, as one department can be in multiple branches and one branch can have multiple departments
create table department_branches(
    dept_branch_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    dept_id BIGINT not NULL,
    branch_id BIGINT not NULL,

    CONSTRAINT fk_dept
    foreign key(dept_id)
    references departments(dept_id)
    on update cascade
    on delete RESTRICT,

    CONSTRAINT fk_branch
    foreign key(branch_id)
    references jumia_branches(branch_id)
    on update cascade
    on delete RESTRICT
);


