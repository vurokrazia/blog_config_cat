module Admin
  class PreviousVisit < Admin::Strategy
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
      post.visits = visits
    end

    def visits
      return 1 unless post.visits
      post.visits + 1
    end

    def update_visits
      post.save
    end
  end
end
