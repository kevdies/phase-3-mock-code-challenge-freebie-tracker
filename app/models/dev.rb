class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        #map over the freebies and return the freebie = to the dev instance freebie
        # freebies.each(&:freebie.item_name == item_name) #not sure if this works but what was what i was trying to do
        # find by => return obj or nil
        # any?
        # !!self.freebies.find_by(item_name: item_name) #!! bangs return a boolean after coercision
        self.freebies.any? {|freebie| freebie.item_name == item_name} #djs
    end

    def give_away(dev_obj, freebie)
        if freebie.dev_id == self.id
            freebie.dev_id = dev_obj.id
            freebie.save
        end
        # freebie.update(dev: dev_obj) unless freebie.dev = self
        # freebie.update(dev: dev) unless freebie.dev != self
    end
end
