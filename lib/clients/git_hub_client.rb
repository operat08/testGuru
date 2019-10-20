class GitHubClient
  DOTENV = Dotenv.overload
  LOGIN = DOTENV['LOGIN']
  PASSWORD = DOTENV['PASSWORD']

  def initialize
    @http_client = Octokit::Client.new(login: LOGIN, password: PASSWORD)
  end

  def create_gist(params)
    @http_client.create_gist(params)
  end
end
