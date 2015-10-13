class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.length
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select { |i| !i.even? }
  end

  def multiple_to_three
    @array.select { |i| i % 3 == 0 }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |i| i.to_f / 10 }
  end

  def chars
    @array.map { |i| (i + 96).chr.to_sym }
  end

  def switch
    minim = @array.index(@array.min)
    maxim = @array.index(@array.max)
    @array[minim], @array[maxim] = @array[maxim], @array[minim]
    @array
  end

  def before_min
    @array.select { |i| @array.index(i) < @array.index(@array.min) }
  end

  def three_smallest
    @array.sort.select { |i| @array.index(i) < 3 }
  end
end
