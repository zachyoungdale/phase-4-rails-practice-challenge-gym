class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    validates_presence_of :name, :age


    def total_charge 
        self.memberships.pluck(:charge).sum
    end

end
