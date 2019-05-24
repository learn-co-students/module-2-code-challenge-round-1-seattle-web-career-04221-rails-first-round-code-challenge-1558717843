class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true

def self.search(q)
  if q == "" || !q
    Heroine.all
  else
    query = Power.find_by(name: q)
    if query
      self.where(power_id: query)
    else
      []
    end
  end
end

end
