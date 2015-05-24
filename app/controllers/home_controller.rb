class HomeController < ApplicationController
  def index
    @paragraph = TermSet.paragraph
    @paragraph2 = TermSet.paragraph
    @paragraph3 = TermSet.paragraph
    @paragraph4 = TermSet.paragraph
    @paragraph5 = TermSet.paragraph
  end
end
