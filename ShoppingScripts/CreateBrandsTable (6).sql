USE Shopping
GO
DROP TABLE Brands
CREATE TABLE Brands
(
	ID int NOT NULL IDENTITY,
	ProductName varchar(500) NOT NULL,
	ItemID int NOT NULL,
	WalmartID int NOT NULL,
	HyVeeID int NOT NULL,
	WalmartPrice decimal(5,2) NOT NULL,
	HyVeePrice decimal(5,2) NOT NULL,
	[Default] bit NOT NULL
)
GO

ALTER TABLE Brands
ADD CONSTRAINT PK_BrandID PRIMARY KEY (ID)
GO

ALTER TABLE Brands
ADD CONSTRAINT FK_ItemID FOREIGN KEY (ItemID)
REFERENCES dbo.ItemType (ID)
GO

INSERT INTO Brands (ProductName, ItemID, WalmartPrice, HyVeePrice, [Default], WalmartID, HyVeeID)
Values
--Eggs
('Hy-Vee Grade A Large Eggs 12 Ct', 1, 2.99, 2.99, 1, 0, 4559830),
('Hy-Vee Grade A Extra Large Eggs 18 Ct', 1, 2.99, 2.99, 0, 0, 3694667),
('Great Value Large Grade A Eggs, 12 Ct', 1, 2.99, 2.99, 0, 145051970, 0),
('Great Value Large Grade A Eggs, 18 Ct', 1, 2.99, 2.99, 0, 172844767, 0),
('Great Value Extra Large Grade A Eggs, 12 Ct', 1, 2.99, 2.99, 0, 165233284, 0),
--Milk
('Hy-Vee 1% Lowfat Milk', 2, 2.99, 2.99, 1, 0, 2049531),
('Hy-Vee 2% Reduced Fat Milk', 2, 2.99, 2.99, 0, 0, 2060849),
('Great Value Low Fat 1% Milk', 2, 2.99, 2.99, 0, 10450116, 0),
--Cheese Slices
('Kraft Singles American Cheese Slices 16 Ct Pack', 3, 2.99, 2.99, 1, 11964619, 1624297),
('Velveeta Slices Original Cheese 16 Ct', 3, 2.99, 2.99, 0, 10295536, 1086194),
('Velveeta Original Cheese Slices 24 Ct', 3, 2.99, 2.99, 0, 10295537, 1404831),
('Hy-Vee Singles American Cheese Slices 16 Ct', 3, 2.99, 2.99, 0, 0, 4861111),
('Kraft Deli Deluxe Cheese Slices American - 16 Ct', 3, 2.99, 2.99, 0, 10295521, 1086192)
--Granola Bars

--Popcorn Kernels

--Microwave Popcorn

--Coffee

--Bananas

--Strawberries

--Apples

--Almond Bark Chocolate

--Pudding

--Chips

--Salsa

--Popcorn Salt

--Iodize Salt

--Sugar

--Vanilla

--Pepper

--Oranges

--Clementines

--Coffee Filters

--Laundry Detergent

--Hamburger Meat

--Bread

--Poptarts

--Peas

--Pizza

--Cereal

--Oatmeal

--Pancake Batter

--Syrup

--Chocolate Chips

--Brown Sugar

--Butter

--Maragarine

--Peaches

--Koolaid Mix

--Ketchup

--Mustard

--Ranch dressing

--Lettuce

--Tortilla

--Hard Shells

--Sour Cream

--Shredded Cheese

--Paper Towels

--Peppers

--Baked Beans

--Ice Cream

--Cosmic Brownies

--Fruit Snacks

--Diced Tomatoes

--Toilet Paper

--Raisins

--Graham Crackers

--Marshmallows

--Hershey's Chocolate Bar

--Cranberries

--Squash

--Onions

--Walnuts

--Powdered Sugar

--Crackers

--Rice

--Quick Mac

--Tuna

--Honey Mustard

--Chia Seeds

--Brownie Mix

--Mashed Potatoes

--Scalloped Potatoes

--Cake Mix

--Buttered noodles

--String Cheese

--Great Northen Beans

--Green Beans

--Canned Corn

--Corn

--Butter Beans

--Chicken Noodle Soup

--Chili Beans

--Enchilada Sauce

--Sloppy Joes

--Sliced Pears

--Pears

--Spaghettios

--Tomato Paste

--Seasoning Mix

--Hot Dog Buns

--Hamburger Buns

--Pickles

--Honey

--Corn Starch

--Cocunut Ooil

--Ghee

--Vinegar

--Bread Crumbs

--Hot Cereal

--Chick Peas

--Sliced Tomatoes

--Pickled Sushi Ginger

--Barbeque Sauce

--Olive Oil

--Broccoli

--Crystal Salt

--Sliced Pimientos

--Corn Syrup

--Green Tea

--Walnut Vinaigrette

--Lasagna

--Flour

--Broth

--Chocolate Syrup

--Vegetable Oil

--Sausage Patties

--Cucumbers

--Freezies

--Chicken Patties

--Chicken Nuggets

--Hot Dogs

--Corn Dogs

--Chicken Strips

--Tator Tots

--Hash Browns

--Mixed Fruit

--Shrimp

--Donuts

--Parmesan Cheese

--Soy Sauce

--Duck Fat

--Steak Sauce

--Sesame Ginger

--Lemon Juice

--Lime Juice

--Taco Sauce

--Caramel Syrup

--Worcester Sauce

--Calm Joice

--Tomato Juice

--Air Freshener

--Orange Juice

--Yogurt

--Bagels

--Cream Cheese

--Mandarin Oranges

--Dryer Sheets

--Sausage

--Block Cheese

--Almond Milk

--Cinnamon Rolls

--Dried Beef

--Solar Salt

--Dog Food

--Cat Food

--Bratwursts

--Prok Chops

--Steak

--Car Oil

--Stir Fry Veggies

--California Blend

--Turkey

--Berry Medley

--Lamb Chop

--Egg Rolls