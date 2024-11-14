# test/components/previews/button_component_preview.rb
class ButtonComponentPreview < Lookbook::Preview
  def default
    render(ButtonComponent.new(
      text: "Delete",
      path: "/"
    ))
  end

  def with_icon
    render(ButtonComponent.new(
      text: "New button",
      path: "/",
      icon: "icon_plus"
    ))
  end

  def outlined
    render(ButtonComponent.new(
      text: "New button",
      path: "/",
      outlined: true
    ))
  end

  def outlined_with_icon
    render(ButtonComponent.new(
      text: "New button",
      path: "/",
      icon: "icon_plus",
      outlined: true
    ))
  end

  def secondary_with_icon
    render(ButtonComponent.new(
      text: "New button",
      type: :secondary,
      path: "/",
      icon: "icon_plus"
    ))
  end

  def secondary_with_icon_outlined
    render(ButtonComponent.new(
      text: "New button",
      type: :secondary,
      path: "/",
      icon: "icon_plus",
      outlined: true
    ))
  end

  def icon_only
    render(ButtonComponent.new(
      path: "/",
      icon: "icon_edit"
    ))
  end
end
