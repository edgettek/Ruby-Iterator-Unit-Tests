class Triple
  include Enumerable

  def initialize(a, b, c)
    @list = [a, b, c]
  end

  def each(&block)
    @list.each do |item|
      block.call(item)
    end
  end

end