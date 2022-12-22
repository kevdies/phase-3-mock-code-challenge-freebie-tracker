class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev_obj, item_name, value)
        Freebie.create(dev: dev_obj, item_name: item_name, value: value, company_id: id)

    end

    def self.oldest_company
        self.order(:founding_year).first
    end
end
