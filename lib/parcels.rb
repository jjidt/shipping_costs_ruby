class Parcel
  def initialize(dim1, dim2, dim3, weight)
    @dim1 = dim1
    @dim2 = dim2
    @dim3 = dim3
    @weight = weight
  end
  def volume
    @dim1*@dim2*@dim3
  end
  def shipping_cost
    self.volume*@weight/100
  end
end
