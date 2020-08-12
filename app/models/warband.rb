class Warband < ApplicationRecord
    validates :name, presence: true
    
    belongs_to :user
    has_many :warriors
    has_many :equipment, through: :warriors

    accepts_nested_attributes_for :warriors
end
