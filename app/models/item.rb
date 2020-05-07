class Item < ApplicationRecord
  belongs_to :user
  # itemはuserのデータの中にある、属しているためbelongs

end
