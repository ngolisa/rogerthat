class NotionsController < ApplicationController
  def index
    @notions = Notion.all
  end



  def update

  end
end
