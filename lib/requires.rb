def requires(item)
  base_path = caller_locations(1..1).first.path
  base_dir = File.dirname base_path
  path = File.expand_path item, base_dir

  if File.directory? path
    Dir["#{path}/**/*.rb"].sort.each do |file|
      require file
    end

  elsif File.file?("#{path}.rb") || File.file?(path.to_s)
    require path

  else
    require item

  end
end
