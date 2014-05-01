class IssuesController < ApplicationController

  layout 'issue'

  def show
    @issue    = Issue.find(params[:id])
    @articles = @issue.articles
    @events   = @issue.events
  end
end
