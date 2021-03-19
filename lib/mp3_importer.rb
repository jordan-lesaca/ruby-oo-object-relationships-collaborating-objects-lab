class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        files = []
        array = Dir.entries(@path)
        array.each do |filename|
            if filename.match(/mp3\z/)
                files  << filename
            end
        end
        files
    end

    def import 
        self.files.each do |fname|
            Song.new_by_filename(fname)
        end
    end

end