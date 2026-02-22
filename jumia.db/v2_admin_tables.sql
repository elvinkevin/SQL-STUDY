create table departments(
    dept_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    branch_id BIGINT not NULL,
    dept_name varchar(20),

    CONSTRAINT fk_branch
    foreign key(branch_id)
    references jumia_branches(branch_id)
    on update cascade
    on delete RESTRICT
);