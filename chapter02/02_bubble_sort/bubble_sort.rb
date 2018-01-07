class BubbleSort
  def self.sort(array)
    new(array).sort
  end

  def initialize(array)
    @ary = array
    @size = @ary.size
  end

  def sort
    loop do
      @bubbled = false
      (0...@size - 1).each do |index|
        bubble(index)
      end
      break if !@bubbled
    end 
    @ary
  end

  def bubble(index)
    return if @ary[index] <= @ary[index + 1]
    @ary[index], @ary[index + 1] = @ary[index + 1], @ary[index]
    @bubbled = true
  end
end
