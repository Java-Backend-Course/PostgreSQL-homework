-- 1
ALTER TABLE library.books ADD COLUMN genre VARCHAR(100);

-- 2
ALTER TABLE library.books RENAME COLUMN available TO is_available;

-- 3
ALTER TABLE library.members DROP COLUMN email;

-- 4
DROP TABLE sales.orderdetails;