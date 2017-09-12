class Triple

  def initialize(a, b, c)
    @list = [a, b, c]
  end

  def each(&block)
    @list.each(&block)
    self
  end

end