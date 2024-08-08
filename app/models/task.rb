class Task < ApplicationRecord 
  
  validates_presence_of :description, :title
end