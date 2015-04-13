# Class to hold the Webpage Entity
class Webpage

  # Initialize a Webpage With Keywords and Page number
  # Page number is the number given to a page based on the order of input
  def initialize(keywords, page_number)
    @keywords = keywords
    @page_number = page_number
    @weights = Array.new
    @keyword_weights = {}
    MAXIMUM_NUMBER_OF_KEYWORDS.downto(MAXIMUM_NUMBER_OF_KEYWORDS - (@keywords.length - 1)) do |i| @weights.push(i)  end

    @keywords.each_with_index do |element,index|
      @keyword_weights[element] = @weights[index]
    end
  end

  # getter for getting keywords of a particular Webpage
  def keywords
    @keywords
  end

  # getter for getting page number of a particular Webpage
  def page_number
    @page_number
  end

  # getter for getting weights  of each keyword associated
  def weights
    @weights
  end

  def keyword_weights
    @keyword_weights
  end

end