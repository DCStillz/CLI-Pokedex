class Model_1

    attr_accessor :name, :height, :weight

    @@all = []

    def initialize (hash)
        hash.each do |key, value|
            
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end  
        @@all << self
    end

    def self.all
        @@all
    end
        

end