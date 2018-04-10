class Array

  def to_b
    Binary.binary self
  end
  def to_num
    Binary.number self
  end
end