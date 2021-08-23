module Admin
  class Visit < Admin::Strategy
    attr_reader :post

    def initialize(post)
      @post = post
    end

    def do_something
      add_visit
      update_visits
    end

    private

    def add_visit
      post.visits = post.visits + 1
    end

    def update_visits
      post.save
    end
  end
end
