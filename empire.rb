class Unit
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
		@stats = {melee_attack: 0, ranged_attack: 0, melee_defense: 0, ranged_defense: 0}
	end
	def add_unit(unit)
		raise TypeError, "unit must be a kind of Unit" unless unit.kind_of? Unit
		@stats.each_key do |attribute|
			case attribute
				when :ranged_attack then next unless unit == Ranged
				when :melee_attack then next unless unit == Melee
			end
			@stats[attribute] += unit.send attribute
		end	
	end
end

