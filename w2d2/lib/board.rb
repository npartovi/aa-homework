class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new}
    place_stones
     
  end

  def place_stones
    cups.each_index do |idx|
      unless idx == 6 || idx == 13
        cups[idx] += [:stone,:stone,:stone,:stone]
      end  
    end

  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 13
    raise "Invalid starting cup" if @cups[start_pos].empty? 
  end

  def make_move(start_pos, current_player_name)
    current_stack = @cups[start_pos]
    @cups[start_pos] = []

    counter = start_pos

    until current_stack.empty? do
      counter += 1
      counter = 0 if counter > 13

      if counter == 6
        if current_player_name == @name1
          @cups[counter] << current_stack.pop
        end
      elsif counter == 13
        if current_player_name == @name2
          @cups[counter] << current_stack.pop
        end
      else
        @cups[counter] << current_stack.pop
      end

      
    end

    render
    next_turn(counter)


  end

  def next_turn(ending_cup_idx)

    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
 
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?

    @cups[0..5].all? {|cup| cup.empty?} ||
    @cups[7..12].all? {|cup| cup.empty?}

  end

  def winner

    if @cups[6] == @cups[13]
      :draw
    elsif @cups[6].count > @cups[13].count
      return @name1
    else
      return @name2
    end
    
  end
    
end
