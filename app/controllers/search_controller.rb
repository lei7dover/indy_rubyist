class SearchController < ApplicationController

  def search

      @repos = Octokit.search_users("location:Indianapolis language:Ruby", :sort => "joined")[:items]

      @rubyists= @repos.collect{ |r| Octokit.user(r[:id])}

      @message = "Search for Indy Rubyists repositories"

  end

end
