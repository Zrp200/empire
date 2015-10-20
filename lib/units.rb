require_relative "empire.rb"

ArmedCitizen = Melee.new 3, 9, 9 # Cannot be used in attacks in-game
Militia = Melee.new 8, 27, 24 # Cannot be used in attacks in-game

Spearman = Melee.new 26, 26, 8, 14, 75, 2
VeteranSpearman = Melee.new 15, 142, 52, 14, 26, 4

Maceman = Melee.new 38, 38, 6, 32, 73, 2
VeteranMaceman = Melee.new 118, 20, 6, 32, 22, 4

Swordsman = Melee.new 61, 5, 3, 12, 24, 3
VeteranSwordsman = Melee.new 111, 138, 72, 29, 28, 6

TwoHandedSwordsman = Melee.new 109, 19, 5, 28, 18, 4
VeteranTwoHandedSwordsman = Melee.new 125, 20, 6

Halberdier = Melee.new 17, 135, 45, 18, 19, 4
VeteranHalberdier = Melee.new 15, 145, 55

TravelingKnight = Melee.new 146, 20, 9
TravelingCrossbowman = Ranged.new 135, 22, 30

KnightOfTheEliteGuard = Melee.new 140, 18, 5, 33, 28, 4
CrossbowmanOfTheEliteGuard = Ranged.new 129, 14, 23, 29, 28, 4

# Auxililary Units
MuscleMan = Melee.new 116, 142, 52, 25
Marksman = Ranged.new 97, 59, 132, 25, 30

FlameBearer = Melee.new 14, 170, 49, 3, 25, 4

DemonHorror = Melee.new 185, 19, 5
DeathlyHorror = Ranged.new 162, 15, 24

Lancer = Melee.new 13, 150, 34

Bowman = Ranged.new 24, 8, 24

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
