class NotionsController < ApplicationController
  def index
    @notions = Notion.all
  end
end
