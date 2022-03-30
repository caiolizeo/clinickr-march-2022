require 'csv'

class Converter
  
  def self.to_array(file)
    arr = []
    csv = CSV.read(file)

    csv.each do |i|
      arr << i[0].split(';')
    end

    return arr
  end

end
