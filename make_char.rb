#this program will be a quest in itself!
def makeChar()
	Struct.new("Charcter", :name,:race,:alignment,:str,:dex,:int,:const,:char,:wis)
	print("Enter your Charcter name: ")
	name = gets.chomp
	print("Enter your Charcter race: ")
	race = gets.chomp
	print("Enter your Charcter alignment: ")
	align = gets.chomp
	skillArray = Array.new(7)
	i = 0
	until i == 6 do
		if i == 0
			puts("Enter the skills in order of highest priority to lowest (ex: str, int, const, dex,...")
			print("Enter your first skill: ")
			skillArray[i] = gets.chomp
			i+=1
		end
		print("Enter your next skill:")
		skillArray[i]= gets.chomp
		i+=1
	end
	print(skillArray)
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
	print stat
	print final
end 


def main()
	rollStat()


end

main()
