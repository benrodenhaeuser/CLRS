class InsertionSort
  def self.sort(array)
    new(array).sort
  end

  def initialize(array)
    @ary = array
    @size = @ary.size
  end

  def sort
    (1...@size).each do |index|
      insert(index)
    end
    @ary
  end

  def insert(index)
    key_to_insert = @ary[index]
    index_for_insertion = index

    (index - 1).downto(0) do |counter|
      break if @ary[counter] <= key_to_insert
      @ary[counter + 1] = @ary[counter]
      index_for_insertion -= 1
    end

    @ary[index_for_insertion] = key_to_insert
  end
end
