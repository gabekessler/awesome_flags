module AwesomeFlags
    
  def all_flags(column = nil)
    a = self.flag_mapping
    if column.nil?
      c = a.values.map {|var| var.keys}.flatten
    else
      b = a[column]
      c = Array.[](b.keys).flatten
    end
    map
  end
  
  def my_flags(column = nil)
    a = self.flag_mapping
    if column.nil?
      c = a.values.map {|var| var.keys}.flatten
    else
      b = a[column]
      c = Array.[](b.keys).flatten
    end
    map {|var| self.send(var) ? var : nil}.compact!
  end
  
end