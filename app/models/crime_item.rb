class CrimeItem < ApplicationRecord
  belongs_to :crime_list

  scope:completed, ->do 
  where(completed:true)
  end
  
end
