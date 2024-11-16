BannerComponent# test/components/previews/button_component_preview.rb
class SearchBarComponentPreview < Lookbook::Preview
  def default
    render(SearchBarComponent.new(search_path: ''))
  end
end
