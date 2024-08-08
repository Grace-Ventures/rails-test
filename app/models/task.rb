class Task < ApplicationRecord 
  
  validates_presence_of :description, :title

  def completed!
    update(completed_at: Time.now)
  end
end