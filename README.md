# Requires

[![Gem Version](https://badge.fury.io/rb/requires.svg)](https://badge.fury.io/rb/requires)
[![Build Status](https://github.com/DannyBen/requires/workflows/Test/badge.svg)](https://github.com/DannyBen/requires/actions?query=workflow%3ATest)

A tiny convenience function to require all ruby files in a directory.

## Install

```bash
$ gem install requires
```

## Usage

```ruby
# Require a directory (recursively)
require 'requires'
requires 'lib'

# Individual files can also be loaded (with or without extension)
requires 'lib/base'
requires 'lib/base.rb'

# ...as well as external gems or built in libraries
requires 'yaml'
```

All paths are relative to the location of the file that calls `requires`.
