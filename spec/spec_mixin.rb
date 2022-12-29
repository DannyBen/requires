module SpecMixin
  def runner(name)
    Dir.chdir "spec/runners/#{name}" do
      require './runner'
    end
  end
end
