class Model_1

    attr_accessor :name, :height, :weight

    def initialize (hash)
        hash.each do |key, value|
            
            self.send("#{key}=", value)
        end
    binding.pry        
    end
        

end