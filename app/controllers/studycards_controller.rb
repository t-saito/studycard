class StudycardsController < ApplicationController
  def index
    @cards = Card.all
  end
end
