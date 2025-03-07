CREATE DATABASE BST;
USE BST;

CREATE TABLE BST (
    N INT PRIMARY KEY,  -- Node value
    P INT               -- Parent node (NULL for root)
);

INSERT INTO BST (N, P) VALUES
(1, 2),
(2, 5),
(3, 2),
(5, NULL),
(6, 8),
(8, 5),
(9, 8);

SELECT * FROM BST;

-- Classify BST nodes as 'Root', 'Inner', or 'Leaf'
SELECT N,
       CASE 
           WHEN P IS NULL THEN 'Root' 
           WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf' 
           ELSE 'Inner' 
       END AS NodeType
FROM BST
ORDER BY N;

