class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each.with_index do |cup,i|
      if i < 6 || i.between?(7,12)
        @cups[i] = %i(stone stone stone stone)
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos < 6 || start_pos.between?(7,12)
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].count
    @cups[start_pos] = []
    (start_pos + 1..start_pos + stones).each do |cup|
      @cups[cup] << :stone
    end
    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? { |cup| cup.empty? }
    return true if @cups[7..12].all? { |cup| cup.empty? }
    false
  end

  def winner
    #if @cups[6].count + @cups[13].count == 12 * 4
      case @cups[6] <=> @cups[13]
      when 1
        @name1
      when -1
        @name2
      when 0
        :draw
      end
    #end
  end
end
