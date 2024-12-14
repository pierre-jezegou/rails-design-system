class HeaderComponentPreview < Lookbook::Preview
  def default
    render HeaderComponent.new do |header|
      header.with_search_bar(search_path: "#")
      header.with_profile_logged_in(name: "Marguerite")
    end
  end

  def login
    render HeaderComponent.new do |header|
      header.with_search_bar(search_path: "#")
    end
  end
end
