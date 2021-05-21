Team Gio
Group Project
CSCI 466
April 29, 2020

SQL Scripts to Create Tables

User:
CREATE TABLE User (
	ID int NOT NULL,
	Name varchar(50) NOT NULL,
	PRIMARY KEY (ID)
	);

Workouts:
CREATE TABLE Workouts (
	Type varchar(25) NOT NULL,
	Intensity varchar(25),
	Duration varchar(25),
	Time varchar(8),
	CaloriesBurnt int,
	ID int NOT NULL,
	PRIMARY KEY (Type),
	FOREIGN KEY (ID) REFERENCES User(ID)
	);

Weights:
CREATE TABLE Weights (
	Units varchar(25) NOT NULL,
	ID int NOT NULL,
	PRIMARY KEY (Units),
	FOREIGN KEY (ID) REFERENCES User(ID)
	);

Meals:
CREATE TABLE Meals (
	Time varchar(8),
	Amount varchar(10),
	ID int NOT NULL,
	FOREIGN KEY (ID) REFERENCES User(ID)
	);

Food/Beverages:
CREATE TABLE FoodBeverages (
	Type varchar(25) NOT NULL,
	PRIMARY KEY (Type)
	);

Micronutirents:
CREATE TABLE Micronutrients (
	FBType varchar(25) NOT NULL,
	Type varchar(25) NOT NULL,
	Quantity varchar(10),
	RecommendedAmount varchar(10),
	PRIMARY KEY (FBType, Type),
	FOREIGN KEY (FBType) REFERENCES FoodBeverages(Type)
	);

Macronutrients:
CREATE TABLE Macronutrients (
	FBType varchar(25) NOT NULL,
	Type varchar(25) NOT NULL,
	CaloriesPerServing int,
	GramsPerServing int,
	PRIMARY KEY (FBType, Type),
	FOREIGN KEY (FBType) REFERENCES FoodBeverages(Type)
	);

ServingSize:
CREATE TABLE ServingSize (
	MacroType varchar(25) NOT NULL,
	Units varchar(25) NOT NULL,
	PRIMARY KEY (MacroType, Units),
	);

Graphs:
CREATE TABLE Graphs (
	WorkoutType varchar(25) NOT NULL,
	WeightUnits varchar(25) NOT NULL,
	MacroType varchar(25) NOT NULL,
	WeightOverTime varchar(25),
	PercentOfEachMacronutrient varchar(25),
	CaloriesBurntPerDay varchar(25),
	CaloriesConsumedPerDay varchar(25),
	PRIMARY KEY (WorkoutType, WeightUnits, MacroType),
	FOREIGN KEY (WorkoutType) REFERENCES Workouts(Type)
	);

ALTER TABLE Graphs
	ADD FOREIGN KEY (WeightUnits) REFERENCES Weights(Units);

HaveA:
CREATE TABLE HaveA (
	MacroType varchar(25) NOT NULL,
	ServingSizeUnits varchar(25) NOT NULL,
	PRIMARY KEY (MacroType, ServingSizeUnits),
	);

Generates:
CREATE TABLE Generates (
	WorkoutType varchar(25) NOT NULL,
	WeightUnits varchar(25) NOT NULL,
	PRIMARY KEY (WorkoutType, WeightUnits),
	FOREIGN KEY (WorkoutType) REFERENCES Workouts(Type)
);

ALTER TABLE Generates
	ADD FOREIGN KEY (WeightUnits) REFERENCES Weights(Units);

Has:
CREATE TABLE Has (
	FBType varchar(25) NOT NULL,
	MicroType varchar(25) NOT NULL,
	MacroType varchar(25) NOT NULL,
	PRIMARY KEY (FBType),
	FOREIGN KEY (FBType) REFERENCES FoodBeverages(Type)
	);