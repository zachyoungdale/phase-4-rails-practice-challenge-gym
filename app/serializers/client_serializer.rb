class ClientSerializer < ActiveModel::Serializer
 attributes :id, :name, :age

 has_many :memberships

 
end
