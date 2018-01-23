create table student(
    student_id text primary key not null,
    name text
);
create table course(
    course_id text primary key not null,
    name text
);
create table teacher(
    teacher_id text primary key not null,
    name text
);
create table section(
    section_number text primary key not null,
);



create table registers(
    student_id text not null,
    course_id text not null,
    primary key(student_id,course_id)
);
create table teaches(
    teacher_id text not null,
    course_id text not null,
    primary key(teacher_id,course_id)
);
