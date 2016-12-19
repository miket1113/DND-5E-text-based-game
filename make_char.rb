#this program will be a quest in itself!
Character = Struct.new(:name,:race,:alignment,:str,:dex,:int,:const,:char,:wis)
def makeChar()
	newChar = Character.new()
	print("Enter your Character name: ")
	name = gets.chomp
	print("Enter your Character race: ")
	race = gets.chomp
	print("Enter your Character alignment: ")
	align = gets.chomp
	skillArray = Array.new(6)
	i = 0
	until i == 6 do
		if i == 0
			puts("Enter the skills in order of highest priority to lowest (ex: str, int, const, dex, wis, char)")
			print("Enter your first skill: ")
			skillArray[i] = gets.chomp
			i+=1
		end
		print("Enter your next skill:")
		skillArray[i]= gets.chomp
		i+=1
	end
	rolledStats = Array.new(6,0)
	i = 0
	until i == 6 do
		rolledStats[i] = rollStat()
		i += 1
	end
	rolledStats = rolledStats.sort
	rolledStats = rolledStats.reverse
	i = 0
	until i == 6 do
		case skillArray[i]
		when "str"
			newChar.str = rolledStats[i]
		when "int"
			newChar.int = rolledStats[i]
		when "dex"
			newChar.dex = rolledStats[i]
		when "wis"
			newChar.wis = rolledStats[i]
		when "const"
			newChar.const = rolledStats[i]
		when "char"
			newChar.char = rolledStats[i]
		else
			puts("It appears you have entered an invalid value for a skill")
			puts("Please try again but enter only the following: str, dex, int, char, wis, const")
			makeChar()
		end
		i += 1
	end
	newChar.name = name
	newChar.alignment = align
	newChar.race = race
	puts("Our brave adventurer's name is #{name} the #{race}")
	puts("#{name}'s stats are as follows:\n Str: #{newChar.str} \n Dex: #{newChar.dex}
		 Const: #{newChar.const} \n Int: #{newChar.int} \n Wis: #{newChar.wis} \n Char: #{newChar.char}")
	print("#{name} prepare for your quest!")
end

#roll a stat
def rollStat()
	stat= Array.new(4,0)
	i = 0
	until i == 4 do 
		stat[i] = rand(1..6)
		i+=1
	end
	stat = stat.sort
	j = 1
	final = 0
	until j == 4 do 
		final += stat[j]
		j+=1
	end
	return final
end 


def main()
	makeChar()


end

main()
