class Admin::Context
  attr_writer :strategy

  def initialize strategy
    @strategy = strategy
  end

  def strategy=(strategy)
    @strategy = strategy
  end

  def do_some_business_logic
    @strategy.do_something
  end
end
