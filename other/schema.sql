CREATE TABLE IF NOT EXISTS "casts"
(
	ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	Filename TEXT NOT NULL UNIQUE,
	Likes INTEGER Default 0 NOT NULL
);

CREATE TABLE IF NOT EXISTS "comments"
(
	ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	CastID INTEGER NOT NULL,
	Author TEXT NOT NULL,
	Message TEXT NOT NULL,
	ParentCommentID INTEGER Default NULL,
	Likes INTEGER Default 0 NOT NULL,
	IP TEXT NOT NULL,
	Timestamp TEXT NOT NULL,
	UserAgent TEXT Default NULL,
	Tracker TEXT Default NULL,
	Ref TEXT Default NULL
);

CREATE TABLE IF NOT EXISTS "views"
(
	ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	CastID INTEGER NOT NULL,
	IP TEXT NOT NULL,
	Timestamp TEXT NOT NULL,
	UserAgent TEXT Default NULL,
	Tracker TEXT Default NULL,
	Ref TEXT Default NULL
);
