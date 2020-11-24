require 'spec_helper'

describe 'requires' do
  context "without arguments" do
    it "requires current directory" do
      expect(runner 'without_arguments').to match_approval "without_arguments"
    end
  end

  context "with a file with extension" do
    it "requires it" do
      expect(runner 'file_with_extension').to match_approval "file_with_extension"
    end
  end

  context "with a file without extension" do
    it "requires it" do
      expect(runner 'file_without_extension').to match_approval "file_without_extension"
    end
  end

  context "with a library name" do
    it "requires it" do
      expect(runner 'library').to match_approval "library"
    end
  end

  context "with an item that cannot be loadad" do
    it "raises LoadError" do
      expect{ requires 'not_a_file' }.to raise_error LoadError, /cannot load such file/
    end
  end

  context "with multiple items" do
    it "requires everything" do
      expect(runner 'multiple_items').to match_approval "multiple_items"
    end
  end

  context "with a glob pattern that does not end with .rb" do
    it "requires all matching files" do
      expect(runner 'glob_without_extension').to match_approval "glob_without_extension"
    end
  end

  context "with a glob pattern that does ends with .rb" do
    it "requires all matching files" do
      expect(runner 'glob_with_extension').to match_approval "glob_with_extension"
    end
  end

  context "with a path that matches both a directory and a filename" do
    it "loads the file and not the directory" do
      expect(runner 'matching_dir_and_file').to match_approval "matching_dir_and_file"
    end
  end
end
