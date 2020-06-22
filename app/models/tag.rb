class Tag < ActiveRecord::Base
    has_many :dish_tags
    has_many :dishes, through: :dish_tags
    validates :name, presence: true
    validates :name, format: {with: /...+/}
    validates :name, format: {with: /\A[^\ ]*(\ )?[^\ ]*\z/}

    def self.most_common
    end

    def self.least_common
    end
    
    def self.unused
    end

    def self.uncommon
    end

    def self.popular
    end

    def restaurants
    end

    def top_restaurant
    end

    def dish_count
    end
end
