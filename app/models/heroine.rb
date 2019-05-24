class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness: true

  # def self.power_search(power)
  #   super_power = Power.find_by(name: power)
  # 
  #   Heroine.all.where(power: super_power)
  # end
end
