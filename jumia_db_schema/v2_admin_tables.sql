create table departments(
    dept_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    dept_name varchar(20),

    CONSTRAINT fk_branch
    foreign key(branch_id)
    references jumia_branches(branch_id)
    on update cascade
    on delete RESTRICT
);


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