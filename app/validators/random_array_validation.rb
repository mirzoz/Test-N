class RandomArrayValidation
  def initialize(long)
    @long = long
  end
#make validations declarated on this methods
  def validate?
    integer? && more_than_nine?
  end

  def error
    return { error: 'El parametro de array no es entero' } unless integer?

    { error: 'El parametro de array no debe ser menor a 10' }
  end

  private

  def integer?
    true if @long.to_i rescue false
  end

  def more_than_nine?
    @long.to_i > 9
  end
end