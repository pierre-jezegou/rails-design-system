# test/components/previews/button_component_preview.rb
class TagComponentPreview < Lookbook::Preview
  def default
    render(TagComponent.new(
      text: "Delete",
      path: ""
    ))
  end
end
