# ONS Numbers RubyGem
A utility class for formatting numbers in common ways. Note that this gem targets Ruby 3.0 and above.

## Installation

```
gem install ons-numbers
```

## Examples

```ruby
require 'ons-numbers'

Numbers.currency(1234.56) # => "£1,234.56"
Numbers.grouped(1234567) # => "1,234,567"
Numbers.percentage(75, 100) # => "75.0%"

```

## Licence

This library is licensed under the MIT licence. Full licence text is available in [LICENCE](LICENCE).

## Copyright
Copyright (C) 2022 Crown Copyright (Office for National Statistics)
