require 'byebug' if ENV['BYEBUG']

def requires(*items)
  items = ['.'] if items.empty?

  calling_script = caller.first.sub(/:\d+.*/, '')
  base_dir = File.dirname calling_script

  Dir.chdir base_dir do
    items.each do |item|
      if File.directory? item
        Dir["#{item}/**/*.rb"].each { |file| require "./#{file}" }
      elsif File.file? "#{item}.rb" or File.file? item
        require "./#{item}"
      else
        raise ArgumentError, "Cannot require #{item}"
      end
    end
  end
end
