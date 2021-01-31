CREATE TABLE IF NOT EXISTS regions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  path LTREE
);

CREATE INDEX regionsPathIndex ON regions (path);

-- Initial data insertion --
INSERT INTO regions (name, path) VALUES ('Region A', '1');
INSERT INTO regions (name, path) VALUES ('Region B', '2');
INSERT INTO regions (name, path) VALUES ('Station 1', '1.1');
INSERT INTO regions (name, path) VALUES ('Station 2', '1.2');
INSERT INTO regions (name, path) VALUES ('Station 3', '1.3');
INSERT INTO regions (name, path) VALUES ('Section 1', '1.3.1');
INSERT INTO regions (name, path) VALUES ('Section 2', '1.3.2');
INSERT INTO regions (name, path) VALUES ('Station 5', '2.1');
INSERT INTO regions (name, path) VALUES ('Station 6', '2.5');
INSERT INTO regions (name, path) VALUES ('Section 3', '2.5.3');
