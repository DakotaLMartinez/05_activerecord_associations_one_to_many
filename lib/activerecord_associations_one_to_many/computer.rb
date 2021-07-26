class Computer < ActiveRecord::Base

  def sleep
    update(asleep: true)
    self
  end

  def wake_up
    update(asleep: false)
    self
  end
  
  def back_up
    update(last_backed_up_at: DateTime.now)
    self
  end

  def self.backed_up
    where.not(last_backed_up_at: nil)
  end


end