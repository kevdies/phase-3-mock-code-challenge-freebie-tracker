class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        #map over the freebies and return the freebie = to the dev instance freebie
        freebies.map(&:freebie.item_name == item_name)

    end

    def give_away(dev, freebie)
        freebie.update(dev: dev) unless freebie.dev != self
    end
end
