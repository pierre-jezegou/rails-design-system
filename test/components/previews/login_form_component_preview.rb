# test/components/previews/button_component_preview.rb
class LoginFormComponentPreview < Lookbook::Preview
  def default
    render(LoginFormComponent.new(action: nil))
  end

end
