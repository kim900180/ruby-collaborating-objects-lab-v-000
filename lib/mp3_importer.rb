class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename) }
  end
end
