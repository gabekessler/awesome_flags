module AwesomeFlags
      
  def all_flags(column = nil)
    c = get_array_of_flags(column)
    c.map
  end
  
  def my_flags(column = nil)
    c = get_array_of_flags(column)
    c.map {|var| self.send(var) ? var : nil}.compact!
  end
  
  def get_array_of_flags(column)
    a = self.flag_mapping
    if column.nil?
      c = a.values.map {|var| var.keys}.flatten
    else
      b = a[column]
      c = Array.[](b.keys).flatten
    end
  end
  
end