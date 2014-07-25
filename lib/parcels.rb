class Parcel
  def initialize(dim1, dim2, dim3, weight)
    @dim1 = dim1
    @dim2 = dim2
    @dim3 = dim3
  end
  def volume
    @dim1*@dim2*@dim3
  end
end
