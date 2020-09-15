CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(120),
    email TEXT,
    password VARCHAR(12)
);

CREATE TABLE subjects(
    sub_id SERIAL PRIMARY KEY,
    sub_name VARCHAR(220)
);

CREATE TABLE assignments(
    ass_id SERIAL PRIMARY KEY,
    ass_title TEXT,
    due_date DATE
);

CREATE TABLE notes(
    note_id SERIAL PRIMARY KEY,
    note_title VARCHAR(220),
    note_date DATE,
    note_content TEXT,
    subject INT REFERENCES subjects(sub_id),
    rel_ass INT REFERENCES assignments(ass_id)
);

ALTER TABLE assignments
ADD user_ass INT REFERENCES users(user_id);
ADD notes INT REFERENCES notes(note_id);

ALTER TABLE notes
ADD user_notes INT REFERENCES users(user_id);
