DROP table IF EXISTS  student,course,teacher,section,registers,teaches cascade;

-- primary key has not null and unique
create table student(
    student_id text primary key,
    name text
);
create table course(
    course_id text primary key,
    name text
);
create table teacher(
    teacher_id text primary key,
    name text
);
create table section(
    section_number text CHECK (section_number in ('A','B','C','D')),
    course_id text not null references course(course_id)
    on update cascade on delete cascade,
    primary key(section_number,course_id)
    -- unique(section_number)
);

create table registers(
    student_id text not null references student(student_id)
    on update cascade on delete cascade,
    course_id text not null references course(course_id)
    on update cascade on delete cascade,
    primary key(student_id,course_id)  -- needed
);
create table teaches(
    teacher_id text not null references teacher(teacher_id)
    on update cascade on delete cascade,
    course_id text not null references course(course_id)
    on update cascade on delete cascade,
    primary key(teacher_id,course_id)  --needed
);
