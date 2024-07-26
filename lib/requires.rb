def requires(item)
  base_path = caller_locations(1..1).first.path
  base_dir = File.dirname base_path
  path = File.expand_path item, base_dir

  if File.directory? path
    Dir["#{path}/**/*.rb"].each do |file|
      require file
    end

  elsif File.file?("#{path}.rb") || File.file?(path.to_s)
    require path

  else
    require item

  end
end

def autoloads(base, symbols = nil)
  unless symbols
    symbols = base
    base = '.'
  end

  base_path = caller_locations(1..1).first.path
  base_dir = File.dirname base_path
  path = File.expand_path base, base_dir

  symbols.each do |symbol|
    file = symbol.to_s
      .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2') # Break consecutive uppercase letters before the last capital
      .gsub(/([a-z\d])([A-Z])/, '\1_\2')     # Break lowercase or digits before an uppercase letter
      .downcase

    autoload symbol, "#{path}/#{file}"
  end
end
