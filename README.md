Requires
==================================================

[![Gem Version](https://badge.fury.io/rb/requires.svg)](https://badge.fury.io/rb/requires)
[![Build Status](https://travis-ci.com/DannyBen/requires.svg?branch=master)](https://travis-ci.com/DannyBen/requires)

**Requires** is ruby's missing `require` function.

It lets you...

```ruby
# ...require multiple files
requires 'any_file', 'with/or/without/extension.rb'

# ...require directories
requires 'first/directory', 'second-dierectory'

# ...require any other library
requires 'yaml', 'lib/important', 'lib'
```

Everything is relative to where `requires` is called from.

---


Installation
--------------------------------------------------

    $ gem install requires


