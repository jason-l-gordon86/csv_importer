require 'csv'

class CSVImporter

  attr_reader :filename, :list_of_names

  def initialize(filename)
    @filename = filename
    @list_of_names = []
  end

  def parse_from_csv
    @list_of_names = CSV.read("./lib/#{@filename}")[1..-1]
    end

  def total_count
    @list_of_names.count
    end
  def total_count_males
    @list_of_names.flatten.count("M")
  end

  def total_count_females
    @list_of_names.flatten.count("F")
  end

  def total_count_jane
    @list_of_names.flatten.count("Jane")
  end
  
end
