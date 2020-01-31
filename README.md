Requires
==================================================

[![Gem Version](https://badge.fury.io/rb/requires.svg)](https://badge.fury.io/rb/requires)
[![Build Status](https://github.com/DannyBen/requires/workflows/Test/badge.svg)](https://github.com/DannyBen/requires/actions?query=workflow%3ATest)

**Requires** is ruby's missing `require` function.

It lets you...

```ruby
# ...require multiple files
requires 'any_file', 'with/or/without/extension.rb'

# ...require directories
requires 'first/directory', 'second-directory'

# ...require with a glob
requires 'base_*', 'directory/*_base'

# ...require any other library
requires 'yaml', 'lib/important', 'lib'
```

Everything is relative to where `requires` is called from.

---


Installation
--------------------------------------------------

    $ gem install requires


