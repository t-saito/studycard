class StudycardsController < ApplicationController
  def index
    @cards = Card.order(updated_at: desc)
  end
end
