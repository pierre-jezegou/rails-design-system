# test/components/previews/button_component_preview.rb
class ProgressBarComponentPreview < Lookbook::Preview
  def default
    render ProgressBarComponent.new(progression: 25, id: "dynamic-progress")
  end
end
