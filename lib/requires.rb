require 'byebug' if ENV['BYEBUG']

def requires(*items)
  items = ['.'] if items.empty?

  items.each do |item|
    if File.directory? item
      Dir["#{item}/**/*.rb"].each { |file| require "./#{file}" }
    elsif File.file? "#{item}.rb"
      require "./#{item}"
    else
      raise ArgumentError, "Cannot require #{item}"
    end
  end
end
