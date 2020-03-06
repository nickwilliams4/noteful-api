TRUNCATE folders, notes RESTART IDENTITY CASCADE;

DROP TABLE IF EXISTS folders;
DROP TABLE IF EXISTS notes;

CREATE TABLE folders (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    date_published TIMESTAMP DEFAULT now() NOT NULL
);

CREATE TABLE notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    date_published TIMESTAMP DEFAULT now() NOT NULL,
    content TEXT,
    folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE NOT NULL
);