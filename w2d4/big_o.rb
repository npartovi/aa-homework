arr = [
 'fish',
 'fiiish',
 'fiiiiish',
 'fiiiish',
 'fffish',
 'ffiiiiisshh',
 'fsh',
 'fiiiissshhhhhh'
]


#O(n^2)
def sluggish_octopus(arr)

	longest_fish = nil

	arr.each_index do |i|
		arr.each_index do |j|
			next if i == j
			if arr[i].length > arr[j].length
				longest_fish = arr[i]
			end
		end
	end

	longest_fish

end

sluggish_octopus(arr)

# O(n log n)
def dominant_octopus(arr)

	arr.sort_by {|word| word.length}.last

end

dominant_octopus(arr)

#O(n)
def clever_octopus(arr)

	biggest_fish = arr.first

	arr.each do |fish|
		if fish.length > biggest_fish.length
			biggest_fish = fish
		end
	end

	biggest_fish

end

clever_octopus(arr)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


# O(n)
def slow_dance(move,tiles_array)

	tiles_array.each_with_index do |tile, i|
		if tile == move
			return i
		end
	end

end

slow_dance("up", tiles_array)
slow_dance("right-down", tiles_array)


def fast_dance(move, tiles_array)
	tiles_array.index(move)
end

p fast_dance("up", tiles_array)
p fast_dance("right-down", tiles_array)