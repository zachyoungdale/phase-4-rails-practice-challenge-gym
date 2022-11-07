class ClientMembershipSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_charge

  has_many :memberships, serializer: ClientMembershipChargeSerializer

end
