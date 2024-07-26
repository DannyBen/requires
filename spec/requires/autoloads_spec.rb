describe 'autoloads' do
  it 'autoloads all symbols from the provided base path' do
    expect { runner 'autoloads' }.to output_approval 'autoloads'
  end
end
