# Class to hold the Query Entity
class Query

  # Initialize a Query With Keywords and Query number
  # Query number is the number given to a query based on the order of input
  def initialize(keywords, query_number)
    @keywords = keywords
    @query_number = query_number
    @weights = Array.new
    @keyword_weights = {}
    MAXIMUM_NUMBER_OF_KEYWORDS.downto(MAXIMUM_NUMBER_OF_KEYWORDS - (@keywords.length - 1)) do |i| @weights.push(i)  end
    @keywords.each_with_index do |element,index|
      @keyword_weights[element] = @weights[index]
    end
  end

  # getter for getting keywords of a particular Query
  def keywords
    @keywords
  end

  # getter for getting query number of a particular Query
  def query_number
    @query_number
  end

  # getter for getting weights  of each keyword associated
  def weights
    @weights
  end

  # getter for keyword weights hash
  def keyword_weights
    @keyword_weights
  end
end