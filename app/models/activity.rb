# app/models/activity.rb
class Activity < ApplicationRecord
    belongs_to :user
  
    # Vos validations et d'autres logiques peuvent être ajoutées ici
  end
  