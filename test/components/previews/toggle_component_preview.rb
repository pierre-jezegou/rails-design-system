BannerComponent# test/components/previews/button_component_preview.rb
class ToggleComponentPreview < Lookbook::Preview
  def default
    render(ToggleComponent.new)
  end
end
