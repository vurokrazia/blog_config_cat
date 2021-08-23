class Visit
  attr_reader :config_cat_client, :post, :context

  def initialize(post)
    @post = post
    @context = Admin::Context.new(Admin::Visit.new(@post))
  end

  def execute
    check_flag
    context.do_some_business_logic
  end

  private

  def config_cat_client
    @config_cat_client ||= ConfigKat.config_cat_client
  end

  def check_flag
    context.strategy = Admin::PreviousVisit.new(@post) unless flag
  end

  def flag
    config_cat_client.get_value(SERVICES_ADMIN_VISIT, false)
  end
end
