class HomeController < ApplicationController
  def index
    #Eventually break up into sentences with punctuation and proper capitalization
    @terms = TermSet.terms.shuffle[0..60].each do |term|
      term.downcase!
    end
    @terms.first.capitalize!
    @terms.last.concat('.')
    @final_terms = @terms.join(" ")
  end
end
