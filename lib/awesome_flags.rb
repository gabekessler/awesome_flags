module AwesomeFlags
    
  def all_flags(column = nil)
    get_flags
    c.map
  end
  
  def my_flags(column = nil)
    get_flags
    c.map {|var| self.send(var) ? var : nil}.compact!
  end
  
  def get_flags(column)
     = self.flag_mapping
    if column.nil?
      c = a.values.map {|var| var.keys}.flatten
    else
      b = a[column]
      c = Array.[](b.keys).flatten
    end
  end
  
end