class RideMechanic < ApplicationRecord
  belongs_to :ride
  belongs_to :mechanic

  def self.search(search)
      key = "%#{search}%"
      where(ride_id: key )
      binding.pry
      joins :ride
  end
end
