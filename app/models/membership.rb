class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates_presence_of :client_id, :gym_id, :charge
    validates :client_id, uniqueness: { scope: :gym_id }


   
end
