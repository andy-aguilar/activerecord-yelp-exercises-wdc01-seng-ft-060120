
class Dish < ActiveRecord::Base
    belongs_to :restaurant
    has_many :dish_tags
    has_many :tags, through: :dish_tags
    validates :name, presence: true
    validates :restaurant, presence: true
    
    def self.names
    end
    
    def self.max_tags
    end

    def self.untagged
    end

    def self.average_tag_count
    end

    def tag_count
    end

    def tag_names
    end
    
    def most_popular_tag
    end

end
