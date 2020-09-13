module InputParser
  extend self

  def parse(string)
    array = string.strip.downcase.split(" ")
    parse_array(array)
  end

  private

  def parse_array(array)
    array.map do |string|
      if string.include?(",")
        parse_array(string.split(","))
      else
        string_to_sym_or_int(string)
      end
    end
  end

  def string_to_sym_or_int(string)
    is_number?(string) ? string.to_i : string.to_sym
  end

  def is_number?(string)
    string !~ /\D/
  end
end