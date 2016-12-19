require 'colorize'
require 'colorized_string'

Screen = Struct.new(:h, :w, :grid, :color)


def mda(height, width)
	a = Array.new(width)
	a.map! { Array.new(height) }
	return a
end


def drawScreen()

	map = Screen.new()
	map.h = 40
	map.w = 80
	printf("map height: %i map width: %i\n", map.h, map.w)

	map.grid = mda(map.h, map.w)

	iH = 0
	iW = 0
	land = 'a'
	until iH == map.h
		until iW == map.w
			case (iH%12)/2
			when 0
			 	land = land.red
			when 1
			 	land = land.green
			when 2
				land = land.blue
			when 3
			 	land = land.yellow
			when 4
			  	land = land.magenta
			when 5
				land = land.cyan
			end
			

			case (iW%12)/2
			when 0
			  land = land.on_red
			when 1
			  land = land.on_green
			when 2
			  land = land.on_blue
			when 3
			  land = land.on_yellow
			when 4
			  land = land.on_magenta
			when 5
			  land = land.on_cyan

			end

			map.grid[iH][iW] = land
			land = 'a'
			iW += 1
		end
		iW = 0
		iH += 1
	end


	iH = 0
	iW = 0
	until iH == map.h
		until iW == map.w
			print map.grid[iH][iW]
			iW += 1
		end
		print "\n"
		iW = 0
		iH += 1
	end

end

def main()
	drawScreen()
end


main()