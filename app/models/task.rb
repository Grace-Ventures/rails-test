class Task < ApplicationRecord 
  
  validates_presence_of :description, :title

  def started!
    update(started_at: Time.now)
  end
end