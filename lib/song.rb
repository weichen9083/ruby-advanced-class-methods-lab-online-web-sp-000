    class Song
      attr_accessor :name, :artist_name
      @@all = []
     
      def self.all
        @@all
      end
     
      def save
        self.class.all << self
      end
      
      def self.create
        x = self.new 
        x.save 
        x
      end 
      
      def self.new_by_name(name)
        x = self.new 
        x.name = name 
        x 
      end 
      
      def self.create_by_name(name)
        x = self.new_by_name(name)
        x.save 
        x 
      end 
      
      def self.find_by_name(name)
       self.all.find {|x| x.name == name}
        
      end 
     
    end