require 'spec_helper'

describe 'requires' do
  context "when called without arguments" do
    it "requires all relative directory" do
      expect(runner 'without_arguments').to match_fixture "without_arguments"
    end
  end
end
