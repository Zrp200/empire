class Unit # @abstract
	attr_reader :melee_defense, :ranged_defense, :looting_capacity, :travel_speed, :food_consumption

	def initialize(melee_defense, ranged_defense, looting_capacity, travel_speed, food_consumption)
		@melee_defense = melee_defense
		@ranged_defense = ranged_defense
		@looting_capacity = looting_capacity
		@travel_speed = travel_speed
		@food_consumption = food_consumption
	end
end
class Melee < Unit
	attr_reader :melee_attack

	def initialize(attack, melee_defense, ranged_defense, looting_capacity = 0, travel_speed = 0, food_consumption = 0)
		@melee_attack =  attack
		super(melee_defense, ranged_defense, looting_capacity, travel_speed, food_consumption)
	end
	def attack_unit?
		@melee_attack >= @melee_defense
	end
	def defense_unit?
		@melee_attack <= @melee_defense
	end
end
class Ranged < Unit
	attr_reader :ranged_attack

	def initialize(attack, melee_defense, ranged_defense, looting_capacity = 0, travel_speed = 0, food_consumption = 0)
		@ranged_attack = attack
		super(melee_defense, ranged_defense, looting_capacity, travel_speed, food_consumption)
	end
	def attack_unit?
		@ranged_attack >= @ranged_defense
	end
	def defense_unit?
		@ranged_attack <= @ranged_defense
	end 
end
class Army
	attr_reader :stats, :units
	def initialize(units = Hash.new(0))
		@stats = {
			number: 0, 
			melee_attack: 0, 
			ranged_attack: 0, 
			melee_defense: 0, 
			ranged_defense: 0,
			looting_capacity: 0,
			travel_speed: nil,
			food_consumption: 0
		}
		@units = Hash.new(0)
		add_units units
	end

	def to_h
		@stats
	end
	def [](key)
		@stats[key]
	end
	def add_unit(unit)
		raise TypeError, "unit must be a kind of Unit" unless unit.kind_of? Unit
		@stats.each_key do |attribute|
			unless attribute == :travel_speed
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
			else
				if @stats[ :travel_speed ].nil?
					@stats[ :travel_speed ] = (unit.travel_speed == 0) ? nil : unit.travel_speed
				elsif @stats[:travel_speed] > unit.travel_speed && unit.travel_speed != 0
					@stats[:travel_speed] = unit.travel_speed
				end
			end
		end
		@units[unit] += 1
	end
	def add_units(units=Hash.new)
		units.each_pair do |unit, amount| 
			amount.times {add_unit unit}
		end
	end
	def defense_distribution
		total = (@stats[:ranged_defense] + @stats[:melee_defense]).to_f
		"#{(@stats[:melee_defense]/total*100).round}% melee : #{((@stats[:ranged_defense]/total)*100).round}% ranged"
	end  
	def attack_distribution
		total = (@stats[:ranged_attack] + @stats[:melee_attack]).to_f
		"#{((@stats[:melee_attack]/total)*100).round}% melee : #{((@stats[:ranged_attack]/total)*100).round}% ranged"
	end
end
class Castle
	attr_reader :left_flank, :front, :right_flank, :courtyard
	def initialize
		@left_flank = Army.new
		@front = Army.new
		@right_flank = Army.new
		@courtyard = Army.new
	end
	def unit_distribution
		total = (left_flank[:number] + front[:number] + right_flank[:number]).to_f
		"#{(left_flank[:number]/total.to_f*100).round}% : #{(front.stats[:number]/total*100).round}% : #{(right_flank.stats[:number]/total*100).round}%"
	end
end
