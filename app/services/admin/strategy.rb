class Admin::Strategy
  def do_something
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  private

  def add_visit
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def visits
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def update_visits
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
