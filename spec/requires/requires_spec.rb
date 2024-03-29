describe 'requires' do
  context 'with a file with extension' do
    it 'requires it' do
      expect { runner 'file_with_extension' }.to output_approval 'file_with_extension'
    end
  end

  context 'with a file without extension' do
    it 'requires it' do
      expect { runner 'file_without_extension' }.to output_approval 'file_without_extension'
    end
  end

  context 'with a library name' do
    it 'requires it' do
      expect { runner 'library' }.to output_approval 'library'
    end
  end

  context 'with an item that cannot be loadad' do
    it 'raises LoadError' do
      expect { requires 'not_a_file' }.to raise_error LoadError, /cannot load such file/
    end
  end

  context 'with multiple items' do
    it 'requires everything' do
      expect { runner 'multiple_items' }.to output_approval 'multiple_items'
    end
  end
end
