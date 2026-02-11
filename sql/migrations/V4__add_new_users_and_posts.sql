WITH enter_u AS (
  INSERT INTO users (name)
  VALUES ('Pasha'), ('Misha')
  RETURNING id
)
INSERT INTO posts (text, owner_id)
SELECT CONCAT('Post num', enter_u.id), enter_u.id FROM enter_u;
