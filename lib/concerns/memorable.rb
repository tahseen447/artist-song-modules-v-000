module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
  def reset_all
    all.clear
  end

  def count
    count
  end

>>>>>>> be1ad581998e0f1a3b8d9929ea05147f42f9d3a2
end
