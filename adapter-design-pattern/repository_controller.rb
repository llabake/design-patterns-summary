class RepositoryController < ApplicationController
  def create
    @client ||= Octokit::Client.new(access_token: ENV("GITHUB_TOKEN"))

    repo_owner = params[:repository][:url].split("/")[-2]
    repo_name = params[:repository][:url].split("/")[-1]

    @repo = Repository.new(name: repo_name, url: params[:repository][:url], user: current_user)

    if @repo.save
      client = Adapter::GitHub.new(@repo)
      client.repo_issues
      client.create_repo_webhook
    end
    respond_to do |f|
      f.js
      f.html {head :no_content; return}
    end
  end
end
