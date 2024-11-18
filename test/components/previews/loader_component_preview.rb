# test/components/previews/button_component_preview.rb
class LoaderComponentPreview < Lookbook::Preview
  def default
    render(LoaderComponent.new)
  end
end
