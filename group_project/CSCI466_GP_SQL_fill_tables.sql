Team Gio
Group Project
CSCI 466
April 29, 2020

SQL Scripts to Fill Tables

User:
INSERT INTO User
	VALUES(39573904, "John Smith");

INSERT INTO User
	VALUES(19564775, "Doris Brooks");

INSERT INTO User
	VALUES(59374003, "Andrew Brown");

INSERT INTO User
	VALUES(83928564, "Jimmy Diaz");

INSERT INTO User
	VALUES(20463958, "Sarah Martin");

Workouts:
INSERT INTO Workouts
	VALUES("Squats", "Medium", "15:00", "6:30", 240, 39573904);

INSERT INTO Workouts
	VALUES("Planks", "High", "3:00", "12:00", 100, 83928564);

INSERT INTO Workouts
	VALUES("Deadlift", "High", "12:30", "3:45", 360, 39573904);

INSERT INTO Workouts
	VALUES("Situps", "Low", "8:00", "10:00", 120, 20463958);

INSERT INTO Workouts
	VALUES("Run", "Medium", "37:00", "2:00", 295, 19564775);

Weights:
INSERT INTO Weights
	VALUES("70.3 kg", 20463958);

INSERT INTO Weights
	VALUES("62.6 kg", 19564775);

INSERT INTO Weights
	VALUES("185.2 lb", 39573904);

INSERT INTO Weights
	VALUES("163.5 lb", 83928564);

INSERT INTO Weights
	VALUES("224.9 lb", 59374003);

Meals:
INSERT INTO Meals
	VALUES("11:30", "1250g", 59374003);

INSERT INTO Meals
	VALUES("2:45", "1010g", 59374003);

INSERT INTO Meals
	VALUES("5:00", "725g", 39573904);

INSERT INTO Meals
	VALUES("8:15", "340g", 19564775);

Food/Beverages:
INSERT INTO FoodBeverages
	VALUES("Sushi");

INSERT INTO FoodBeverages
	VALUES("Hamburger");

INSERT INTO FoodBeverages
	VALUES("Pizza");

INSERT INTO FoodBeverages
	VALUES("Carrot");

INSERT INTO FoodBeverages
	VALUES("Water");

INSERT INTO FoodBeverages
	VALUES("Soda");

INSERT INTO FoodBeverages
	VALUES("Tea");

Micronutirents:
INSERT INTO Micronutrients
	VALUES("Pizza", "Sodium", "1200mg", "3400mg");

INSERT INTO Micronutrients
	VALUES("Water", "Magnesium", "5.6mg", "420mg");

INSERT INTO Micronutrients
	VALUES("Carrot", "Zinc", "0.35mg", "10mg");

Macronutrients:
INSERT INTO Macronutrients
	VALUES("Hamburger", "Protein", 1506, 110);

INSERT INTO Macronutrients
	VALUES("Soda", "Carbohydrates", 150, 340);

INSERT INTO Macronutrients
	VALUES("Sushi", "Fats", 50, 255);

ServingSize:
INSERT INTO ServingSize
	VALUES("Protein", "56g");

INSERT INTO ServingSize
	VALUES("Carbohydrates", "300g");

INSERT INTO ServingSize
	VALUES("Fats", "70g");

Graphs:
INSERT INTO Graphs
	VALUES("Deadlift", "185.2 lb", "Protein", "WeightGraph1", "MacroGraph1", "CalsBurntGraph1", "CalsConsumedGraph1");

INSERT INTO Graphs
	VALUES("Squats", "70.3 kg", "Carbohydrates", "WeightGraph2", "MacroGraph2", "CalsBurntGraph2", "CalsConsumedGraph2");

INSERT INTO Graphs
	VALUES("Run", "224.9 lb", "Fats", "WeightGraph3", "MacroGraph3", "CalsBurntGraph3", "CalsConsumedGraph3");

HaveA:
INSERT INTO HaveA
	VALUES("Protein", "56g");

INSERT INTO HaveA
	VALUES("Carbohydrates", "300g");

INSERT INTO HaveA
	VALUES("Fats", "70g");

Generates:
INSERT INTO Generates
	VALUES("Squats", "62.6 kg");

INSERT INTO Generates
	VALUES("Situps", "185.2 lb");

INSERT INTO Generates
	VALUES("Planks", "224.9 lb");

Has:
INSERT INTO Has
	VALUES("Pizza", "Sodium", "Protein");

INSERT INTO Has
	VALUES("Water", "Magnesium", "Carbohydrates");

INSERT INTO Has
	VALUES("Carrot", "Zinc", "Fats");