class Contract < ActiveRecord::Base
  set_primary_key "id_contract"
  
  belongs_to :liner
  belongs_to :closer
  belongs_to :seller
  belongs_to :multiplier
end
