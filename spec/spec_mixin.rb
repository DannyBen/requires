module SpecMixin
  def runner(name)
    `ruby spec/runners/#{name}/runner.rb 2>&1`
  end
end