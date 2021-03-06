# awesome_flags

You'll need the FlagShihTzu plugin installed.

    plugin install git://github.com/xing/flag_shih_tzu.git
    
Then set that up how you like. [FlagShihTzu](http://github.com/xing/flag_shih_tzu.git "FlagShihTzu repo")

Then get the awesome_flags gem.
  
    gem 'awesome_flags'

## AwesomeFlags outputs the keys used in FlagShihTzu columns as an Array of :symbols, or a Hash of flag names and bit values.

Just require AwesomeFlags in your model. Don't forget to install the FlagShihTzu plugin and add that as well.

    include FlagShihTzu
    include AwesomeFlags

### Array Methods

Call all active flags for a variable, or add a column name to filter.
    
    my_flags    
    my_flags("column_name")

Using the all_flags method will return all flags (filtered by column or not).

    all_flags
    all_flags("column_name")

You can also send either method to a block to output formatted flags.   
This can be handy to do things like generate check boxes dynamically. For example

    - @thing.all_flags.each do |flag|
      = check_box flag, :class => 'check_box'
      = label :flags, "#{flag.to_s.titleize}"


### Hash Method

There is also a method to return the hash of flag names and bit values. The keys are the flag names and the values are the bit values.
This can also be filtered by column.

    get_hash_of_flags
    get_hash_of_flags("column_name")
    
Good for creating drop downs

    = select(:flags, @thing.get_hash_of_flags.collect {|key, value| ["#{key.to_s.titleize}", value]})
    
Copyright (c) 2011 Gabe Kessler. See LICENSE.txt for
further details.

