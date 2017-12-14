def sluggish_octopus(fish)
  fish.each_with_index do |fish1, idx1|
    max_length = true
    fish.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish1.length
    end
    return fish1 if max_length
  end
end


class Array
  def dominant_octopus(fish)
    prc = Proc.new { |x, y| y.length <=> x.length }
    fish.merge_sort(&prc)[0]
  end

  def merge_sort(&prc)
    prc ||= Proc.new { |a, b| a <=> b }
    return self if length <= 1
    middle_el = length / 2
    sleft = self.[0...midpoint].merge_sort(&prc)
    right = self.[midpoint..-1].merge_sort(&prc)
    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    sorted = []
    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == 1
        sorted << right.shift
      else
        sorted << left.shift
      end
    end
    sorted = left + right
  end
end


def clever_octopus(fish)
  biggest_fish = fish.first
  fish.each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end
  biggest_fish
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end


tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
