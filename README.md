# Requires

![repocard](https://repocard.dannyben.com/svg/requires.svg)

A tiny convenience function to require or autoload all ruby files in a directory.

## Install

```bash
$ gem install requires
```

## Usage

### `requires`

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

### `autoloads`

Autoload en masse, with paths relative to the one calling `autuoloads`.

```ruby
require 'requires'
autoloads 'lib', %i[Asset SomeAPI HTTPClient]
```

which is equivalent to these native autoload statements:

```ruby
autoload :Asset, './lib/asset'
autoload :SomeAPI, './lib/some_api'
autoload :HTTPClient, './lib/HTTPClient'
```

In case you wish to autoload from the same directory, you can omit the first
argument:

```ruby
autoloads %i[Asset SomeAPI HTTPClient]
# which is the same as
# autoloads '.', %i[Asset SomeAPI HTTPClient]
```
