class RandomArrayService
  attr_reader :conf, :result, :array
# params conf = params[:conf] if comes from the controller
  def initialize(conf=nil)
    @conf = conf
    @result = []
    @array = []
  end
#take conf and make and random array
  def generate
    (0..30).sort{ rand() } .take(@conf)
  end
#if we pass and array input(random_array self method) we get the largest range
  def output(input)
    array = []
    input.sort.each do |value|
      select_result(input, value)
    end
    [@result.first, @result.last]
  end

  private
#method to discriminate numbers
  def select_result(input, value)
    value_next = value + 1
    return @array << value if input.include?(value_next)

    array << value
    @result = @array if @result.size < @array.size
    @array = []
  end
end