require_relative "empire.rb"

# Cannot be moved in-game
	ArmedCitizen = Melee.new 3, 9, 9
	Militia = Melee.new 8, 27, 24

Spearman = Melee.new 26, 26, 8, 14, 75, 2
VeteranSpearman = Melee.new 15, 142, 52, 14, 26, 4

Maceman = Melee.new 38, 38, 6, 32, 73, 2
VeteranMaceman = Melee.new 118, 20, 6, 32, 22, 4

Swordsman = Melee.new 61, 5, 3, 12, 24, 3
VeteranSwordsman = Melee.new 111, 138, 72, 29, 28, 6

TwoHandedSwordsman = Melee.new 109, 19, 5, 28, 18, 4
VeteranTwoHandedSwordsman = Melee.new 125, 20, 6

# Recruitable units found in Everwinter Glacier:
	RenegadeNorsemanWarrior = Melee.new 103, 129, 41, 28, 25, 4
	RenegadeNorsmanBowman = Ranged.new 86, 48, 119, 28, 25, 4
	Wolfhound = Melee.new 50, 50, 0, 0, 80, 30
	Barbarian = Melee.new 113, 9, 4, 50, 25, 4

Halberdier = Melee.new 17, 135, 45, 18, 19, 4
VeteranHalberdier = Melee.new 15, 145, 55

FrostBowman = Ranged.new 135, 19, 28, 21, 32, 4
MasterFrostBowman = Ranged.new 162, 15, 24, 40, 28, 5

BoneHuntress = Melee.new 145, 21, 8, 25, 32, 4
MasterBoneHuntress = Melee.new 185, 19, 5, 35, 28, 5

TravelingKnight = Melee.new 146, 20, 9
TravelingCrossbowman = Ranged.new 135, 22, 30

KnightOfTheEliteGuard = Melee.new 140, 18, 5, 33, 28, 4
CrossbowmanOfTheEliteGuard = Ranged.new 129, 14, 23, 29, 28, 4

# Auxililary Units:
	MuscleMan = Melee.new 116, 142, 52, 25
	Marksman = Ranged.new 97, 59, 132, 25, 30

FlameBearer = Melee.new 14, 170, 49, 3, 25, 4

DemonHorror = Melee.new 185, 19, 5
DeathlyHorror = Ranged.new 162, 15, 24

Lancer = Melee.new 13, 150, 34
KhanGuards = Melee.new 175, 54, 50, 32, 28, 5
VeteranSaberCleaver = Melee.new 149, 20, 15, 35, 28, 4
VeteranSlingshot = Ranged.new 139, 19, 24, 32, 28, 4

Bowman = Ranged.new 24, 8, 24, 13, 75, 2
VeteranBowman = Ranged.new 18, 59, 132, 13, 27, 4

CompositeBowman = Ranged.new 16, 54, 159

Longbowman = Ranged.new 20, 51, 125
VeteranLongbowman = Ranged.new 17, 61, 134

Crossbowman = Ranged.new 36, 6, 36
VeteranCrossbowman = Ranged.new 98, 16, 26

CrossbowmanOfTheKingsguard = Ranged.new 121, 14, 23
ScoutOfTheKingsGuard = Ranged.new 16, 64, 139

HeavyCrossbowman = Ranged.new 92, 15, 24
VeteranHeavyCrossbowman = Ranged.new 114, 16, 26

Archer = Ranged.new 10, 53, 55

SpearThrower = Ranged.new 14, 35, 139
RenegadeSpearThrower = Ranged.new 14, 20, 139

CultistBowman = Ranged.new 92, 51, 125

DemonSlayer = Melee.new 178, 16, 5, 10, 70, 6
Assassin = Ranged.new 152, 11, 17, 8, 70, 6
	
# Dies after attacking 
	RenegadeSharkToothWarrior = Melee.new 146, 20, 9, 0, 50, 4
	RenegadeStoneSmasher = Ranged.new 135, 22, 30, 0, 50, 4

RenegadeSwashbuckler = Melee.new 166, 11, 3, 90, 28, 6 # Lots of fire damage
RenegadeSailRipper = Ranged.new 144, 8, 14, 90, 28, 6 
