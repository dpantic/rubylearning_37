
class GameBoard
  def set_locations_cells(location_array)
    @location_array = location_array
  end
  def check_yourself(guess)
    if @location_array.delete(guess.to_i) && !@location_array.empty?
        puts "Hit"
    elsif @location_array.empty?
        puts "End"
        return "kill"
    else
        puts "Miss"
    end
  end
end