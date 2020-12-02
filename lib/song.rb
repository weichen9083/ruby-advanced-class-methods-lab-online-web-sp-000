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
      
      def self.find_or_create_by_name(name)
        if self.find_by_name(name)
          self.find_by_name(name)
        else 
          self.create_by_name(name)
        end 
      end 
      
      def self.alphabetical 
        self.all.sort_by {|x|x.name}
      end 
      
      def self.new_from_filename(name)
        splited_name = name.split("-")
        x = self.find_or_create_by_name(splited_name[0])
        x.artist_name = splited_name[1].delete(".mp3")
        x
      end 
      
      
      
      
      
      
    
      
      
      
      
      
      
      
      
     
    end