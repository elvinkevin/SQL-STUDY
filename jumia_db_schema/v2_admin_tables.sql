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