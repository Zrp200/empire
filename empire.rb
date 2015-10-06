require "singleton"
class Unit # @abstract
	include Singleton

	attr_reader :melee_defense, :ranged_defense

	def initialize(melee_defense, ranged_defense)
		@melee_defense = melee_defense
		@ranged_defense = ranged_defense
	end
end
class Melee < Unit
	attr_reader :melee_attack

	def initialize(attack, melee_defense, ranged_defense)
		@melee_attack =  attack
		super(melee_defense, ranged_defense)
	end
	def attack_unit?
		@melee_attack >= @melee_defense
	end
	def defense_unit?
		@melee_attack <= @melee_defense
	end

	ArmedCivilian = new 3, 9, 9
	Militia = new 8, 27, 24
	Spearman = new 26, 26, 8
	VeteranSpearman = new 15, 142, 52
	Maceman = new 38, 38, 6
	VeteranMaceman = new 118, 20, 6
	Swordsman = new 61, 5, 3
	Halberdier = new 17, 135, 45
	TravelingKnight = new 146, 20, 9
end
class Ranged < Unit
	attr_reader :ranged_attack

	def initialize(attack, melee_defense, ranged_defense)
		@ranged_attack = attack
		super(melee_defense, ranged_defense)
	end
	def attack_unit?
		@ranged_attack >= @ranged_defense
	end
	def defense_unit?
		@ranged_attack <= @ranged_defense
	end 

	Bowman = new 24, 8, 24
	Longbowman = new 20, 51, 125
	Crossbowman = new 36, 6, 36
	VeteranCrossbowman = new 98, 16, 26
	CrossbowmanOfTheKingsguard = new 121, 14, 23
	HeavyCrossbowman = new 92, 15, 24
	ScoutOfTheKingsguard = new 16, 64, 139
	TravelingCrossbowman = new 135, 22, 30
	Archer = new 10, 53, 55
	RenegadeSpearThrower = new 14, 20, 139
end
class Army
	attr_reader :stats
	def initialize
		@stats = {
# TODO			looting_capacity: 0,
			number: 0, 
			melee_attack: 0, 
			ranged_attack: 0, 
			melee_defense: 0, 
			ranged_defense: 0
		}
	end

	def to_h
		@stats
	end
	def add_unit(unit)
		raise TypeError, "unit must be a kind of Unit" unless unit.kind_of? Unit
		@stats.each_key do |attribute|
			@stats[attribute] += case attribute
			when :number then 1
			when :melee_attack
				if unit.is_a? Melee then unit.melee_attack
				else 0
				end
			when :ranged_attack
				if unit.is_a? Ranged then unit.ranged_attack
				else 0
				end
			else
				unit.send attribute
			end
		end
	end
	def add_units(*units)
		units.each {|unit| add_unit(unit)}
	end
end
