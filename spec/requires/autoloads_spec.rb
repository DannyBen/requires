describe 'autoloads' do
  it 'autoloads all symbols from the provided base path' do
    expect { runner 'autoloads' }.to output_approval 'autoloads'
  end

  context 'when the first argument is omitted' do
    it "considers it as if it was '.'" do
      # same approval since same output is expected
      expect { runner 'autoloads-shorthand' }.to output_approval 'autoloads'
    end
  end
end
