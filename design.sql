DROP table IF EXISTS student,course,teacher,section,registers,teaches;

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
    course_id text not null unique references course(course_id),
    primary key(section_number,course_id)
    -- foreign key (course_id) ,
    -- CONSTRAINT ref_integ UNIQUE course_id
);



create table registers(
    student_id text references teacher(teacher_id),
    course_id text references course(course_id)
    -- foreign key (teacher_id) references teacher(teacher_id)
    -- foreign key (course_id) references course(course_id)
);
create table teaches(
    teacher_id text not null references teacher(teacher_id),
    course_id text references course(course_id)
    -- foreign key (teacher_id) references teacher(teacher_id)
    -- foreign key (course_id) references course(course_id)
);
