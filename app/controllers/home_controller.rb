class HomeController < ApplicationController
  def index
    #Eventually break up into sentences with punctuation and proper capitalization
    @terms = TermSet.terms.shuffle[0..45].each do |term|
      term.downcase!
    end
    @terms.first.capitalize!
    @terms[16].capitalize!
    @terms[31].capitalize!
    @terms[15].concat('.')
    @terms[30].concat('.')
    @terms.last.concat('.')
    @final_terms = @terms.join(" ")
  end
end
