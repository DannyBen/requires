describe 'require_dir' do
  it 'is requires a directory' do
    expect { runner 'require_dir' }.to output_approval 'require_dir'
  end
end
