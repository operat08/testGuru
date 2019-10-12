module ApplicationHelper
  def year
    Time.new.year
  end

  def link_to_github(author, repo)
    "https://github.com/#{author}/#{repo}"
  end
end
