class Track < ApplicationRecord

    SHORT = 180000
    LONG = 360000

    def self.starts_with(char)
        where("name ilike ?", "#{char}%")
    end

    def self.short
        # where("milliseconds < ?", SHORT)
        shorter_than(SHORT)
    end
    
    def self.long
        # where("milliseconds > ?", LONG)
        longer_than(LONG)
    end
    
    def self.medium
        # where("milliseconds < ?", LONG).where("milliseconds > ?", SHORT)
        longer_than(SHORT).shorter_than(LONG)
    end

    def self.shorter_than(milliseconds)
        where("milliseconds < ?", milliseconds)
    end
    
    def self.longer_than(milliseconds)
        where("milliseconds >= ?", milliseconds)
    end
end
