class TodoList < ApplicationRecord
  belongs_to :user
  belongs_to :conect
  
  has_many :todo_items

  def completed_items
    @completed_items ||=todo_items.completed.count
  end

  def total_items
    @total_items ||=todo_items.count
  end

  def percent_complete
    return 0 if total_items==0
    ( 100* completed_items.to_f/ total_items).round(1)
  end

  def status
    case percent_complete.to_i
    when percent_complete=0
      'Not suspected'
    when 0<percent_complete<50
      'Slightly suspected'
    when  50<percent_complete<100
      'Highly suspected'
    end
  end 
  
    def badge_color
      case percent_complete.to_i
      when 0
        'dark'
      when 100
        'info'
      else
        'primary'
      end
    end
  end