module SpecMixin
  def runner(name)
    Dir.chdir "spec/runners/#{name}" do
      require './runner.rb'
    end
  end
end
