# Class to parse the input
class InputProcessor

  def initialize
    @input_data = Array.new
    @web_page_count = 1
    @query_count = 1
    @web_pages = {}
    @queries = {}
    @output_data = Array.new
  end

  # Add data to input class variable
  def add_input_data(input_string)
    @input_data.push(input_string);
    # Raise an exception when input is not a string
    raise "Invalid input line: #{input_string.inspect}" unless input_string.scan(/\w+/).size > 1
    raise "Expecting a string: #{input_string.inspect}" unless input_string.kind_of?(String)
    raise "Invalid input line: #{input_string.inspect}" unless input_string.start_with?('P', 'Q')
  end

  # process input data
  # by classifying the data into webPages and Queries
  def process_input_data
    @input_data.each { |line|
      unless line.start_with?('P')
        array_of_query_keywords = line.split(" ")
        array_of_query_keywords.shift
        query = Query.new(array_of_query_keywords, @query_count)
        hash_index = "Q#{@query_count}"
        @queries[hash_index] = query
        @query_count = @query_count + 1
      else
        array_of_webpage_keywords = line.split(" ")
        array_of_webpage_keywords.shift
        webpage = Webpage.new(array_of_webpage_keywords, @web_page_count)
        hash_index = "P#{@web_page_count}"
        @web_pages[hash_index] = webpage
        @web_page_count = @web_page_count + 1
      end
    }
  end

  # Display output data
  def display_output
    @queries.each do |key, value|
      search_object = Search.new(value, @web_pages)
      puts search_object.get_formated_search_results()
    end
  end

end