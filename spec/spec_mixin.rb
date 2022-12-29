module SpecMixin
  def runner(name)
    require "./spec/runners/#{name}/runner"
  end
end
