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

	ArmedCivilian = new 3, 9, 9
end
class Ranged < Unit
	attr_reader :ranged_attack

	def initialize(attack, melee_defense, ranged_defense)
		@ranged_attack = attack
		super(melee_defense, ranged_defense)
	end
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
				if unit.is_a? Ranged then unit.ranged_atttack
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
