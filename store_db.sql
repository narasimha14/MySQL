/*
  @author: Narasimha Murthy

  Problem Description:
    Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
    You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store.
    You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
*/
CREATE TABLE sports_store (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, aisle INTEGER, discount INTEGER );

INSERT INTO sports_store VALUES (0, "tennis ball", 10, 1, 0);
INSERT INTO sports_store VALUES (1, "tennis racquet", 100, 1, 0);
INSERT INTO sports_store VALUES (2, "cricket ball", 10, 2, 0);
INSERT INTO sports_store VALUES (3, "cricket bat", 90, 2, 0);
INSERT INTO sports_store VALUES (4, "table tennis ball", 10, 3, 0);
INSERT INTO sports_store VALUES (5, "table tennis racquet", 85, 3, 0);
INSERT INTO sports_store VALUES (6, "table tennis rubber", 50, 3, 0);
INSERT INTO sports_store VALUES (7, "football", 15, 4, 0);

INSERT INTO sports_store VALUES (8, "basketball", 30, 4, 0);
INSERT INTO sports_store VALUES (9, "baseball", 15, 5, 0);
INSERT INTO sports_store VALUES (10, "baseball bat", 150, 5, 0);
INSERT INTO sports_store VALUES (11, "cricket gloves", 20, 2, 0);
INSERT INTO sports_store VALUES (12, "cricket pads", 20, 2, 0);
INSERT INTO sports_store VALUES (13, "cricket helmet", 50, 2, 0);
INSERT INTO sports_store VALUES (14, "cricket jersey", 60, 2, 0);
INSERT INTO sports_store VALUES (15, "cricket guard", 110, 2, 0);


SELECT * FROM sports_store ORDER BY price;
SELECT aisle, MAX(price) from sports_store GROUP BY aisle;
