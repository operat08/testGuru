class GitHubClient
  ACCESS_TOKEN = '3d5cb7edbfb45737e5fd70abd15094ce3800a8e6'

  def initialize
    @http_client = Octokit::Client.new(login: 'morphizm', password: 'OPERoper77')
  end

  def create_gist(params)
    @http_client.create_gist(params)
  end
end
