require 'open-uri'

class GamesController < ApplicationController

  ALPHA = %w(S H J T C N J R F K B)
  
  def new
    @letters = Array.new(5) {ALPHA.sample}
    @letters += Array.new(5) { (('A'..'Z').to_a - ALPHA).sample}
    @letters.shuffle!
  end

  def score
  end
end
