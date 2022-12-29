def require_dir(item)
  Dir["#{item}/**/*.rb"].sort.each do |file|
    require "./#{file}"
  end
end

def requires(item)
  if File.directory? item
    require_dir item

  elsif File.file?("#{item}.rb") || File.file?("#{item}")
    require "./#{item}"

  else
    require item

  end
end
