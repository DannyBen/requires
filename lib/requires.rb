def requires(*items)
  items = ['.'] if items.empty?

  calling_script = caller.first.sub(/:\d+.*/, '')
  base_dir = File.dirname calling_script

  Dir.chdir base_dir do
    items.each do |item|
      if item.include? '*'
        item += ".rb" unless item.end_with? '.rb'
        Dir["#{item}"].sort.each { |file| require "./#{file}" }
      elsif File.directory? item
        Dir["#{item}/**/*.rb"].sort.each { |file| require "./#{file}" }
      elsif File.file? "#{item}.rb" or File.file? item
        require "./#{item}"
      else
        require item
      end
    end
  end
end
