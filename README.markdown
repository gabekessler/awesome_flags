= awesome_flags
  
  $gem 'awesome_flags'

AwesomeFlags returns the keys used in a FlagShihTzu column as symbols.

Just require AwesomeFlags in your model. Don't forget to install the FlagShihTzu plugin and add that as well.

To call all flags for a model use the method
  $my_flags

To call just the flags from a specific column use:
  $my_flags("column_name")

Using the all_flags method will return all flags (filtered by column or not as above).
These will test true/false for that object so can be used to generate checkboxes in a form.

You can also send either method to a block to output formatted flags.

== Copyright

Copyright (c) 2011 Gabe Kessler. See LICENSE.txt for
further details.

