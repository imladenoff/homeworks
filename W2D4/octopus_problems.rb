#Big O-ctopus and Biggest Fish

#A Very Hungry Octopus wants to eat the longest fish in an array of fish.

fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

#Sluggish Octopus

#Find the longest fish in O(n^2) time. Do this by comparing all fish
#lengths to all other fish lengths

def sluggish_octopus(fishes)
  fishes.each do |fish1|
    big_fish = true
    fishes.each do |fish2|
      big_fish = false if fish1.length < fish2.length
    end
    return fish1 if big_fish
  end
end

#Dominant Octopus

#Find the longest fish in O(n log n) time. Hint: You saw a sorting
#algorithm that runs in O(n log n) in the Sorting Demo. Remember that
#Big O is classified by the dominant term.

# n log n search
class Array
  #this should look familiar
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def dominant_octopus(fishes)
  # sort the array longest to shortest
  prc = Proc.new { |x, y| y.length <=> x.length }
  #return the first element
  fishes.merge_sort(&prc)[0]
end

#Clever Octopus

#Find the longest fish in O(n) time. The octopus can hold on to the
#longest fish that you have found so far while stepping through the
#array only once.

def clever_octopus(fishes)
  big_fish = ''
  fishes.each { |fish| big_fish = fish if fish.length > big_fish.length }
  big_fish
end

###Dancing Octopus

#Full of fish, the Octopus attempts Dance Dance Revolution. The game has
#tiles in the following directions:

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

#To play the game, the octopus must step on a tile with her
#corresponding tentacle. We can assume that the octopus's eight
#tentacles are numbered and correspond to the tile direction indices.

#Slow Dance

#Given a tile direction, iterate through a tiles array to return the
#tentacle number (tile index) the octopus must move. This should take
#O(n) time.

#slow_dance("up", tiles_array)
#> 0

#slow_dance("right-down", tiles_array)
#> 3

def slow_dance(tile, tiles)
  tiles.each.with_index do |current_tile, i|
    return i if tile == current_tile
  end
end

#Constant Dance!

#Now that the octopus is warmed up, let's help her dance faster. Use a
#different data structure and write a new function so that you can
#access the tentacle number in O(1) time.

#fast_dance("up", new_tiles_data_structure)
#> 0

#fast_dance("right-down", new_tiles_data_structure)
#> 3

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance(tile, tiles)
  tiles[tile]
end
