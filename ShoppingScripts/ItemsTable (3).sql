USE Shopping
GO

CREATE TABLE Items
(
	ID INT NOT NULL IDENTITY,
	[Name] varchar(50) not null,
	ItemTypeID int not null,
	TimesBought int default 0,
	LastPurchaseDate date,
	LastPurchasePrice money
)
GO

ALTER TABLE Items
ADD CONSTRAINT PK_ItemID PRIMARY KEY (ID)
GO

ALTER TABLE Items
ADD CONSTRAINT FK_ItemTypeID FOREIGN KEY (ItemTypeID)
REFERENCES dbo.ItemType (ID)

INSERT INTO Items (Name, ItemTypeID)
VALUES
('Eggs', 1),                 ('Milk', 1),              ('Cheese Slices', 1),        ('Granola Bars', 7),    ('Popcorn Kernels', 7),       ('Microwave Popcorn', 7),
('Coffee', 7),               ('Bananas', 2),           ('Strawberries', 2),         ('Apples', 2),          ('Almond Bark Chocolate', 7), ('Pudding', 7),
('Mac & Cheese', 7),         ('Spaghetti', 7),         ('Spaghetti Sauce', 7),      ('Chips', 5),           ('Salsa', 6),                 ('Popcorn Salt', 6),
('Iodized Salt', 6),         ('Sugar', 7),             ('Vanilla', 7),              ('Pepper', 6),          ('Oranges', 2),               ('Clementines', 2),
('Coffee Filters', 8),       ('Laundry Detergent', 8), ('Hamburger Meat', 4),       ('Bread', 5),           ('Poptarts', 7),              ('Peas', 3), 
('Pizza', 9),                ('Cereal', 7),            ('Oatmeal', 7),              ('Pancake Batter', 7),  ('Syrup', 6),                 ('Chocolate Chips', 7),
('Brown Sugar', 7),          ('Butter', 1),            ('Margarine', 1),            ('Peaches', 2),         ('Koolaid Mix', 7),           ('Peanut Butter', 6),
('Jelly', 6),                ('Mayonnaise', 6),        ('Ketchup', 6),              ('Mustard', 6),         ('Ranch Dressing', 6),        ('Lettuce', 3),
('Tortilla', 5),             ('Hard Shells', 5),       ('Sour Cream', 6),           ('Shredded Cheese', 1), ('Paper Towels', 8),          ('Peppers', 3),
('Baked Beans', 7),          ('Ice Cream', 1),         ('Cosmic Brownies', 7),      ('Fruit Snacks', 7),    ('Diced Tomatoes', 3),        ('Toilet Paper', 8), 
('Tomatoes', 3),             ('Potatoes', 3),          ('Apple Sauce', 7),          ('Raisins', 7),         ('Graham Crackers', 7),       ('Marshmallows', 7),
('Herheys Bar', 7),          ('Cranberries', 2),       ('Squash', 3),               ('Onions', 3),          ('Walnuts', 9),               ('Powdered Sugar', 7),
('Crackers', 7),		     ('Rice', 7),              ('Quick Mac', 7),            ('Tuna', 4),            ('Honey Mustard', 6),         ('Chia Seeds', 7),
('Brownie Mix', 7),          ('Mashed Potatoes', 7),   ('Scalloped Potatoes', 7),   ('Cake Mix', 7),        ('Buttered Noodles', 7),      ('String Cheese', 1),
('Great Northern Beans', 7), ('Green Beans', 7),       ('Canned Corn', 7),          ('Corn', 3),            ('Butter Beans', 7),          ('Chicken Noodle Soup', 7),
('Chili Beans', 7),          ('Enchilada Sauce', 7),   ('Sloppy Joes', 7),          ('Sliced Pears', 7),    ('Pears', 2),                 ('Spaghettios', 7),
('Tomato Paste', 7),         ('Seasoning Mix', 7),     ('Hot Dog Buns', 5),         ('Hamburger Buns', 5),  ('Pickles', 3),               ('Honey', 6),
('Corn Starch', 7),          ('Coconut Oil', 7),       ('Ghee', 7),                 ('Vinegar', 7),         ('Bread Crumbs', 5),          ('Hot Cereal', 7),
('Chick Peas', 7),           ('Sliced Tomatoes', 7),   ('Pickled Sushi Ginger', 7), ('Barbeque Sauce', 6),  ('Olive Oil', 7),             ('Broccoli', 3), 
('Crystal Salt', 7),         ('Sliced Pimientos', 7),  ('Corn Syrup', 7),           ('Green Tea', 7),       ('Walnut Vinaigrette', 7),    ('Lasagna', 9), 
('Flour', 7),                ('Broth', 7),             ('Chocolate Syrup', 6),      ('Vegetable Oil', 7),   ('Sausage Patties', 4),       ('Cucumbers', 3),
('Freezies', 9),             ('Chicken Patties', 4),   ('Chicken Nuggets', 4),      ('Hot Dogs', 4),        ('Corn Dogs', 4),             ('Chicken Strips', 4),
('Tator Tots', 9),           ('Hash Browns', 9),       ('Mixed Fruit', 2),          ('Shrimp', 4),          ('Donuts', 9),                ('Parmesan Cheese', 1),
('Soy Sauce', 6),            ('Duck Fat', 6),          ('Steak Sauce', 6),          ('Sesame Ginger', 6),   ('Lemon Juice', 6),           ('Lime Juice', 6),
('Taco Sauce', 6),           ('Caramel Syrup',6),      ('Worcester Sauce', 6),      ('Clam Juice', 9),      ('Tomator Juice', 2),         ('Air Freshener', 8),
('Orange Juice', 2),         ('Yogurt', 9),            ('Bagels', 5),               ('Cream Cheese', 1),    ('Mandarin Oranges', 2),      ('Dryer Sheets', 8),
('Sausage', 4),              ('Block Cheese', 1),      ('Almond Milk', 1),          ('Cinnamon Rolls', 9),  ('Dried Beef', 4),            ('Solar Salt', 8),
('Dog Food', 9),             ('Cat Food', 9),          ('Bratwursts', 4),           ('Pork Chops', 4),      ('Steak', 4),                 ('Car Oil', 8),
('Stir Fry Veggies', 3),     ('California Blend', 3),  ('Turkey', 4),               ('Berry Medley', 2),    ('Lamb Chop', 4),             ('Egg Rolls', 9)