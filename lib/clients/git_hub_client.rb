class GitHubClient
  ROOT_ENDPOINT = 'https://api.github.com'.freeze
  ACCESS_TOKEN = '3d5cb7edbfb45737e5fd70abd15094ce3800a8e6'

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params)
    @http_client.post('gists') do |request|
      request.headers['Authorization'] = "token #{ACCESS_TOKEN}"
      request.headers['Content-Type'] = 'application/json'
      request.body = params.to_json
    end
  end

  private

  def setup_http_client
    Faraday.new(url: ROOT_ENDPOINT)
  end
end