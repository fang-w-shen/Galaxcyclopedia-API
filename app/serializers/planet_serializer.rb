class PlanetSerializer < ActiveModel::Serializer
  attributes :id,:name,:distance_from_sun, :mass, :average_temperature, :volume, :diameter, :orbital_period, :moons, :length_of_day, :gravity, :major_gases
end
